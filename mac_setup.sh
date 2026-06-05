#!/bin/bash
# ==============================================
#  macOS 简单一键设置脚本 (Setup Script)
#  功能：
#    - 安装 Xcode Command Line Tools
#    - 安装 Homebrew（如果没有）
#    - 安装常用 CLI 工具（包含 iperf3 等网络测试工具）
#    - 安装常用 GUI App（通过 Homebrew Cask）
#    - 应用基础系统优化（键盘速度、Finder、Dock 等）
#  使用方法：
#    1. 保存为 mac_setup.sh
#    2. chmod +x mac_setup.sh
#    3. ./mac_setup.sh
#  注意：
#    - 运行前建议备份（Time Machine）
#    - 部分优化需要重启或重新登录生效
#    - App Store App 需要先登录 App Store
#  作者：基于用户需求定制（参考 mathiasbynens 等经典优化）
# ==============================================

set -e  # 出错立即退出

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

info()    { echo -e "${BLUE}[INFO]${NC}  $1"; }
success() { echo -e "${GREEN}[OK]${NC}    $1"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

# 检查是否为 macOS
if [[ "$(uname)" != "Darwin" ]]; then
    error "此脚本仅适用于 macOS！"
fi

echo ""
echo "======================================"
echo "   macOS 简单设置脚本开始执行"
echo "======================================"
echo ""

# 1. 安装 Xcode Command Line Tools（Homebrew 依赖）
info "检查并安装 Xcode Command Line Tools..."
if ! xcode-select -p &>/dev/null; then
    xcode-select --install
    warn "请在弹出的窗口中完成 Xcode Command Line Tools 安装，然后重新运行此脚本。"
    exit 0
else
    success "Xcode Command Line Tools 已安装"
fi

# 2. 安装 Homebrew
info "检查并安装 Homebrew..."
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # 添加到 PATH（Apple Silicon 和 Intel 都兼容）
    if [[ -f /opt/homebrew/bin/brew ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -f /usr/local/bin/brew ]]; then
        eval "$(/usr/local/bin/brew shellenv)"
    fi
    success "Homebrew 安装完成"
else
    success "Homebrew 已存在"
fi

# 更新 Homebrew
info "更新 Homebrew..."
brew update

# 3. 安装常用 CLI 工具（开发者 + 网络测试相关）
info "安装常用 CLI 工具..."
brew install \
    git \
    gh \                    # GitHub CLI
    iperf3 \                # 网络速度测试（你之前问的）
    curl \
    wget \
    fzf \
    ripgrep \               # rg，超快搜索
    jq \
    htop \
    neovim \
    mas \                   # Mac App Store CLI
    tree \
    bat \                   # 更好的 cat
    eza                     # 更好的 ls

success "CLI 工具安装完成"

# 4. 安装常用 GUI 应用（通过 Cask）
info "安装常用 GUI 应用..."
brew install --cask \
    iterm2 \                # 更好的终端
    visual-studio-code \
    raycast \               # 现代启动器（强烈推荐）
    rectangle \             # 窗口管理（免费替代 Magnet）
    alt-tab \               # 更好的 Alt+Tab
    stats \                 # 菜单栏系统监控
    firefox \
    obsidian \              # 笔记
    discord \               # 可选，注释掉不需要的
    spotify

success "GUI 应用安装完成"

# 5. 可选：安装 App Store 应用（需要先登录 App Store）
info "检查是否安装 App Store 应用（mas）..."
if mas account &>/dev/null; then
    info "检测到已登录 App Store，安装常用 App..."
    mas install 937984704 || true    # Amphetamine（保持唤醒）
    mas install 409183722 || true    # Numbers（可选）
    # mas install 497799835 || true  # Xcode（很大，建议手动安装）
    success "App Store 应用安装完成"
else
    warn "未登录 App Store，跳过 mas 安装。"
    warn "如需安装 App Store App，请先打开 App Store 登录，然后手动运行："
    warn "  mas install 937984704   # Amphetamine"
fi

# 6. 基础系统优化（defaults write）
info "应用 macOS 系统优化..."
# 键盘重复速度（更快）
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

# Finder 显示隐藏文件和路径
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# 禁用 Finder 动画（更快）
defaults write com.apple.finder DisableAllAnimations -bool true

# Dock 自动隐藏 + 更快动画
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.2

# 禁用 Launchpad 动画
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0

# 截图保存位置
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots

# 禁用自动纠正和拼写检查（开发者友好）
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# 触控板和鼠标速度（可选）
# defaults write -g com.apple.trackpad.scaling -float 2.0

# 重启相关服务让部分设置生效
killall Finder &>/dev/null || true
killall Dock &>/dev/null || true

success "系统优化完成"

# 7. 额外：设置默认 shell 为 zsh（macOS 默认就是）
if [[ "$SHELL" != *"zsh"* ]]; then
    chsh -s "$(which zsh)" || warn "切换 shell 失败，请手动执行 chsh -s /bin/zsh"
fi

# 8. 清理
info "清理 Homebrew..."
brew cleanup

echo ""
echo "======================================"
success "macOS 设置脚本执行完成！"
echo "======================================"
echo ""
echo "建议操作："
echo "  1. 重启 Mac 让所有优化生效"
echo "  2. 打开 iTerm2 / VS Code 开始使用"
echo "  3. 如需管理已安装内容，推荐创建 Brewfile："
echo "     brew bundle dump --global --force"
echo ""
echo "如需恢复默认设置，可参考 mathiasbynens/dotfiles 项目。"
echo ""

# 可选：询问是否立即重启（注释掉避免意外）
# read -p "是否现在重启？ (y/N) " -n 1 -r
# echo
# if [[ $REPLY =~ ^[Yy]$ ]]; then
#     sudo reboot
# fi
