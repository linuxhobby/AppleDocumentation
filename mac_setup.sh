#!/bin/bash
# ==============================================
#  macOS 高级一键设置脚本 (Advanced Setup Script)
#  完整功能：
#    - 交互菜单 或 --dry-run 支持 (类似 linux_tools.sh)
#    - 更多工具: AI (ollama), 网络/VPS (tailscale, nmap, terraform, ansible, kubectl, helm 等)
#    - 集成 chezmoi (现代 dotfiles 管理)
#    - Oh My Zsh + 流行插件 (autosuggestions, syntax-highlighting 等)
#    - Grok CLI (官方 + 开源)
#    - 自动 git init ~/.dotfiles + 提示 push
#    - 丰富网络测试别名 + 函数
#    - 系统优化
#    - Brewfile 生成
#  用法:
#    ./mac_setup.sh                  # 交互菜单
#    ./mac_setup.sh --dry-run        # 预览模式，不执行
#    ./mac_setup.sh --all            # 直接全执行
#  自定义: 编辑脚本中的数组和变量
# ==============================================

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

info()    { echo -e "${BLUE}[INFO]${NC}  $1"; }
success() { echo -e "${GREEN}[OK]${NC}    $1"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

DRY_RUN=false
RUN_ALL=false

# Parse args
for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --all) RUN_ALL=true ;;
  esac
done

if [[ "$(uname)" != "Darwin" ]]; then
    error "此脚本仅适用于 macOS！"
fi

echo ""
echo -e "${CYAN}======================================"
echo "   macOS 高级设置脚本"
if $DRY_RUN; then echo "   [DRY-RUN 模式 - 仅预览]"; fi
echo -e "======================================${NC}"
echo ""

# Helper for dry-run
run_cmd() {
  local desc="$1"
  shift
  if $DRY_RUN; then
    echo -e "${YELLOW}[DRY]${NC}  $desc"
    echo "      Would run: $@"
  else
    info "$desc"
    "$@"
  fi
}

# ==============================================
# 定义各步骤函数 (支持 dry-run)
# ==============================================

setup_base() {
  info "=== 1. 基础环境 (Xcode + Homebrew) ==="
  run_cmd "检查 Xcode Command Line Tools" xcode-select -p &>/dev/null || {
    if ! $DRY_RUN; then
      xcode-select --install
      warn "请完成安装后重新运行"
      exit 0
    fi
  }
  success "Xcode CLT 就绪"

  run_cmd "安装/更新 Homebrew" bash -c '
    if ! command -v brew &>/dev/null; then
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    if [[ -f /opt/homebrew/bin/brew ]]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -f /usr/local/bin/brew ]]; then
      eval "$(/usr/local/bin/brew shellenv)"
    fi
    brew update
  '
  success "Homebrew 就绪"
}

setup_cli() {
  info "=== 2. CLI 工具 (含 AI / 网络 / VPS 相关) ==="
  BREW_CLI=(
    # 基础 + 网络测试
    git gh curl wget iperf3 mtr speedtest-cli nmap iftop vnstat mosh rsync
    # 开发 & 生产力
    fzf ripgrep jq bat eza zoxide starship neovim tmux lazygit htop tree mas
    # 语言 & VPS 相关
    node python go awscli terraform ansible kubectl helm tailscale
    # AI 相关
    ollama   # 也可通过 cask
  )
  run_cmd "安装 CLI 工具" brew install "${BREW_CLI[@]}"
  success "CLI 工具完成"
}

setup_gui() {
  info "=== 3. GUI 应用 ==="
  BREW_CASK=(
    iterm2 visual-studio-code
    raycast rectangle alt-tab stats
    karabiner-elements hammerspoon
    docker ollama tailscale
    firefox obsidian notion postman cleanshot
    # 可选娱乐/其他
    # discord spotify
  )
  run_cmd "安装 GUI 应用" brew install --cask "${BREW_CASK[@]}"
  success "GUI 应用完成"
}

setup_grok() {
  info "=== 4. Grok CLI ==="
  # 官方 (需订阅)
  # run_cmd "安装官方 Grok Build CLI" curl -fsSL https://x.ai/cli/install.sh | bash
  # 开源社区版
  if ! command -v grok &>/dev/null; then
    run_cmd "安装开源 Grok CLI" curl -fsSL https://raw.githubusercontent.com/superagent-ai/grok-cli/main/install.sh | bash
  fi
  warn "Grok CLI 完成。设置 API Key 后使用: export XAI_API_KEY=... (来自 console.x.ai)"
  success "Grok CLI 部分完成"
}

setup_omz() {
  info "=== 5. Oh My Zsh + 插件 ==="
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    run_cmd "安装 Oh My Zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  fi
  ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
  run_cmd "安装 OMZ 插件" bash -c '
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions 2>/dev/null || true
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting 2>/dev/null || true
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM}/plugins/zsh-completions 2>/dev/null || true
  '
  success "Oh My Zsh + 插件完成"
}

setup_chezmoi() {
  info "=== 6. chezmoi (现代 dotfiles 管理) ==="
  run_cmd "安装 chezmoi" brew install chezmoi
  mkdir -p "$HOME/.dotfiles"
  # 配置 chezmoi 使用 ~/.dotfiles 作为 source
  mkdir -p "$HOME/.config/chezmoi"
  cat > "$HOME/.config/chezmoi/chezmoi.yaml" << 'CHEZ'
sourceDir: ~/.dotfiles
CHEZ
  success "chezmoi 已集成 (source: ~/.dotfiles)"
}

setup_optimizations() {
  info "=== 7. 系统优化 ==="
  # 键盘
  run_cmd "键盘加速" defaults write -g KeyRepeat -int 1
  run_cmd "键盘延迟" defaults write -g InitialKeyRepeat -int 10
  # Finder
  run_cmd "Finder 显示隐藏文件" defaults write com.apple.finder AppleShowAllFiles -bool true
  run_cmd "Finder 路径栏" defaults write com.apple.finder ShowPathbar -bool true
  run_cmd "禁用 DS_Store 网络" defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  # Dock - 不自动隐藏（用户要求）
  run_cmd "Dock 不自动隐藏" defaults write com.apple.dock autohide -bool false
  # Launchpad 网格布局 (Launchpad 图标行列数，参考 AppleDocumentation/setting.txt)
  # 1. 调整每一列显示图标数量 (每列图标数，即垂直行数)
  run_cmd "Launchpad 每列图标数" defaults write com.apple.dock springboard-rows -int 6
  # 2. 调整每一行显示图标数量 (每行图标数，即水平列数)
  run_cmd "Launchpad 每行图标数" defaults write com.apple.dock springboard-columns -int 9
  # 3. 设置生效 (本节末尾统一 killall Dock)
  # 截图
  mkdir -p "$HOME/Pictures/Screenshots"
  run_cmd "截图位置" defaults write com.apple.screencapture location "$HOME/Pictures/Screenshots"
  # 其他
  run_cmd "禁用自动纠正" defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
  killall Finder Dock &>/dev/null || true   # 重启 Dock 以使 Launchpad 网格等设置生效
  success "系统优化完成"
}

setup_aliases() {
  info "=== 8. 别名与函数 (网络/AI/VPS) ==="
  # 这里会和 dotfiles 部分结合
  success "别名将在 dotfiles 部分设置"
}

init_dotfiles_git() {
  info "=== 9. 初始化 ~/.dotfiles git repo + push 提示 ==="
  DOTFILES_DIR="$HOME/.dotfiles"
  mkdir -p "$DOTFILES_DIR"
  cd "$DOTFILES_DIR"
  if [ ! -d .git ]; then
    run_cmd "git init ~/.dotfiles" git init
    run_cmd "git add & commit" git add . && git commit -m "Initial macOS setup by mac_setup.sh" || true
  fi
  if $DRY_RUN; then
    echo "[DRY] Would prompt for remote and push"
  else
    echo "当前 ~/.dotfiles git 状态:"
    git status --short || true
    read -p "输入远程仓库 URL (如 git@github.com:你的用户名/dotfiles.git，空则跳过 push): " remote_url
    if [ -n "$remote_url" ]; then
      git remote remove origin 2>/dev/null || true
      git remote add origin "$remote_url"
      git branch -M main
      run_cmd "推送 dotfiles" git push -u origin main
    else
      warn "跳过 push。你可以稍后手动: cd ~/.dotfiles && git remote add origin <url> && git push -u origin main"
    fi
  fi
  success "Git repo 处理完成"
}

setup_full_dotfiles() {
  info "=== 10. 完整 dotfiles + chezmoi + OMZ + 别名 ==="
  DOTFILES_DIR="$HOME/.dotfiles"
  mkdir -p "$DOTFILES_DIR"

  # 生成 .zshrc (OMZ + chezmoi 友好 + 丰富别名/函数)
  cat > "$DOTFILES_DIR/.zshrc" << 'ZSHRC'
# ==========================================
#  .zshrc - 由 mac_setup.sh + chezmoi 管理
#  自定义请编辑此文件或使用 chezmoi edit
# ==========================================

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  # 或 "starship" 如果用 starship
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf docker zoxide)
source $ZSH/oh-my-zsh.sh

# Starship (如果安装)
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

# zoxide
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# 基础
alias ls='eza'
alias ll='eza -l --icons --git --all'   # 显示隐藏文件
alias la='eza -a --icons --git'
alias cat='bat --style=plain'
alias ..='cd ..'

# ========== 网络测试 (VPS 相关) ==========
export VPS_IP="YOUR_VPS_IP"   # <--- 修改这里！

alias speedtest='curl -o /dev/null -s -w "下载速度: %{speed_download} bytes/sec\n" https://speed.hetzner.de/100MB.bin'
alias speedtest-big='curl -o /dev/null -s -w "下载速度: %{speed_download} bytes/sec\n" https://speed.hetzner.de/1GB.bin'

function iperf-down() { iperf3 -c "${VPS_IP}" -P 10 -t 30 -R -i 1; }
function iperf-up()   { iperf3 -c "${VPS_IP}" -P 10 -t 30 -i 1; }
function iperf-both() {
  echo "=== 下载测试 (VPS -> Mac) ==="
  iperf-down
  echo -e "\n=== 上传测试 (Mac -> VPS) ==="
  iperf-up
}

alias mtr-vps='mtr "${VPS_IP}"'
alias ping-vps='ping -c 10 "${VPS_IP}"'
alias nettest='speedtest && echo "---" && iperf-both || echo "请设置 VPS_IP"'

# ========== AI / Grok 相关 ==========
alias grok='grok'  # 假设已装
function ask-grok() { grok --prompt "$*"; }

# ========== VPS / 常用函数 ==========
function vps-ssh() { ssh "root@${VPS_IP}" "$@"; }  # 根据你的用户调整
function vps-scp() { scp "$1" "root@${VPS_IP}:$2"; }

# 其他
alias update-all='brew update && brew upgrade && brew cleanup && mas upgrade'
ZSHRC

  # 也生成 .gitconfig 示例
  cat > "$DOTFILES_DIR/.gitconfig" << 'GIT'
[user]
    name = Marco Chan
    email = your@email.com
[core]
    editor = nvim
[init]
    defaultBranch = main
GIT

  # 使用 chezmoi 管理
  run_cmd "chezmoi add dotfiles" chezmoi --source "$DOTFILES_DIR" add "$HOME/.zshrc" "$HOME/.gitconfig" || true
  run_cmd "chezmoi apply" chezmoi apply

  success "chezmoi + dotfiles + 别名设置完成"
}

# ==============================================
# 菜单系统 (类似 linux_tools.sh)
# ==============================================

MENU_ITEMS=(
    "基础环境 (Xcode + Homebrew)"
    "CLI 工具 (AI/网络/VPS)"
    "GUI 应用"
    "Grok CLI 安装"
    "Oh My Zsh + 插件"
    "chezmoi 集成"
    "系统优化"
    "网络测试别名/函数"
    "初始化 ~/.dotfiles git + push 提示"
    "完整 dotfiles (chezmoi + OMZ + 别名)"
)

SELECTED=(0 0 0 0 0 0 0 0 0 0)

print_menu() {
    clear
    echo -e "\n${CYAN}=====================================================${NC}"
    echo -e "${CYAN}   macOS 高级设置脚本 — 选择要执行的功能${NC}"
    echo -e "${CYAN}   支持 --dry-run 预览 / 菜单交互${NC}"
    echo -e "${CYAN}=====================================================${NC}"
    echo -e "  ${GREEN}输入序号切换，a=全选，n=全不选，d=切换 dry-run，q=退出，回车执行${NC}\n"
    for i in "${!MENU_ITEMS[@]}"; do
        local idx=$((i + 1))
        if [[ "${SELECTED[$i]}" == "1" ]]; then
            echo -e "  ${GREEN}[✔] ${idx}. ${MENU_ITEMS[$i]}${NC}"
        else
            echo -e "  ${RED}[ ] ${idx}. ${MENU_ITEMS[$i]}${NC}"
        fi
    done
    echo ""
    local dry_status="OFF"
    $DRY_RUN && dry_status="ON"
    echo -e "  ${GREEN}a${NC} 全选   ${GREEN}n${NC} 全不选   ${YELLOW}d${NC} 切换DryRun (当前:${dry_status})   ${RED}q${NC} 退出   ${CYAN}回车${NC} 开始"
    echo -e "${CYAN}=====================================================${NC}"
    echo -n "  请输入序号: "
}

execute_selected() {
    local funcs=(
        setup_base
        setup_cli
        setup_gui
        setup_grok
        setup_omz
        setup_chezmoi
        setup_optimizations
        setup_aliases
        init_dotfiles_git
        setup_full_dotfiles
    )
    for i in "${!SELECTED[@]}"; do
        if [[ "${SELECTED[$i]}" == "1" ]]; then
            ${funcs[$i]}
        fi
    done
}

# 主逻辑
if $RUN_ALL; then
    setup_base
    setup_cli
    setup_gui
    setup_grok
    setup_omz
    setup_chezmoi
    setup_optimizations
    setup_full_dotfiles
    init_dotfiles_git
    success "全量执行完成"
    exit 0
fi

# 交互菜单
while true; do
    print_menu
    read -r input

    case "$input" in
        "")
            any=0
            for s in "${SELECTED[@]}"; do [[ "$s" == "1" ]] && any=1; done
            if [[ $any -eq 0 ]]; then
                echo -e "\n  ${YELLOW}[WARN]${NC}  至少选择一项"
                sleep 1
            else
                break
            fi
            ;;
        a|A) SELECTED=(1 1 1 1 1 1 1 1 1 1) ;;
        n|N) SELECTED=(0 0 0 0 0 0 0 0 0 0) ;;
        d|D)
            if $DRY_RUN; then DRY_RUN=false; else DRY_RUN=true; fi
            ;;
        q|Q)
            clear
            echo -e "\n  ${RED}已退出。${NC}\n"
            exit 0
            ;;
        [1-9]|10)
            idx=$((input - 1))
            if [[ $idx -ge 0 && $idx -lt ${#SELECTED[@]} ]]; then
                [[ "${SELECTED[$idx]}" == "1" ]] && SELECTED[$idx]=0 || SELECTED[$idx]=1
            fi
            ;;
        *)
            echo -e "\n  ${YELLOW}[WARN]${NC}  无效输入 1-10 / a / n / d / q / 回车"
            sleep 1
            ;;
    esac
done

clear
echo -e "${CYAN}开始执行选中的步骤...${NC}"
execute_selected

echo ""
echo -e "${CYAN}======================================"
success "脚本执行完成！"
echo -e "======================================${NC}"
echo "建议："
echo "  - source ~/.zshrc"
echo "  - 重启终端或 Mac"
echo "  - 编辑 ~/.dotfiles/.zshrc 替换 YOUR_VPS_IP"
echo "  - cd ~/.dotfiles && git status (检查 push)"
echo ""
