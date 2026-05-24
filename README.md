# AppleNote
记录macOS和iPhone的各种应用设置安装等笔记

### macOS 初始设置和应用安装推荐

### 一、系统设置 
#### 1、调整每一列显示图标数量(*代表你要显示的列数) 
defaults write com.apple.dock springboard-rows -int 6
#### 2、调整每一行显示图标数量（*代表你要显示的行数） 
defaults write com.apple.dock springboard-columns -int 9 
#### 3、设置生效 
killall Dock


### 一键安装（国内加速版）  
/bin/bash -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"  

### 每次升级后自动清理  
echo 'export HOMEBREW_NO_INSTALL_CLEANUP=0' >> ~/.zshrc  

### 每周自动更新  
crontab -e  
0 3 * * 0 brew cleanup -s  
# My macOS Applications

## 🚀 Efficiency Tools

# 🍎 My macOS Applications

<div align="center">

![macOS](https://img.shields.io/badge/macOS-Apple-black?style=for-the-badge&logo=apple)
![Apple Silicon](https://img.shields.io/badge/Apple%20Silicon-M%20Series-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Updating-success?style=for-the-badge)

</div>

> 我的 macOS 常用软件清单。  
> 主要围绕效率、开发、AI、NAS 与日常娱乐打造。  
> 平台基于 Apple Silicon（M 系列）环境。  
> 持续更新中 🚀

---

# 🚀 Efficiency & Productivity

# 🍎 My macOS Applications

<div align="center">

![macOS](https://img.shields.io/badge/macOS-Apple-black?style=for-the-badge&logo=apple)
![Apple Silicon](https://img.shields.io/badge/Apple%20Silicon-M%20Series-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Updating-success?style=for-the-badge)

</div>

> 我的 macOS 常用软件清单。  
> 主要围绕效率、开发、AI、NAS、办公与影音娱乐打造。  
> 持续更新中 🚀

---

# 📚 Application Categories

| 分类 | 说明 |
|---|---|
| 🚀 Efficiency & Productivity | 效率工具、窗口管理、快捷操作 |
| 💻 Development & Terminal | 开发工具、终端、Git、服务器管理 |
| 🤖 AI Tools | AI 助手与 AI 工作流 |
| 🧹 System Tools | 系统清理、广告过滤、系统增强 |
| 📦 Compression Tools | 压缩与解压工具 |
| 🎬 Media & Content | 视频播放、录屏、字幕与内容创作 |
| 🌐 Network & Proxy | 网络代理与远程访问 |
| ☁️ Cloud & NAS | 云盘与 NAS 管理 |
| 💬 Communication | 即时通讯与邮件 |
| 📄 Office | Office 办公工具 |
| 🎵 Entertainment | 娱乐与下载 |
| 💰 Finance | 股票与金融工具 |
| 🖥️ Remote & Virtualization | 远程桌面与虚拟化 |
| 📑 PDF Tools | PDF 编辑与转换 |

---

# 🚀 Efficiency & Productivity

| APP | 功能简介 |
|---|---|
| Alfred 5 | macOS 顶级效率工具，支持 Workflow 自动化 |
| CheatSheet | 长按 Command 查看当前软件快捷键 |
| Rectangle | macOS 窗口分屏与快捷布局工具 |
| FlowVision | AI 工作流工具 |
| Easydict | OCR + 划词翻译工具 |
| TablePlus | 现代化数据库管理工具 |

---

# 💻 Development & Terminal

| APP | 功能简介 |
|---|---|
| iTerm2 | macOS 高级终端 |
| GitHub Desktop | GitHub 官方 Git 管理工具 |
| FileZilla | FTP / SFTP 文件传输 |
| CotEditor | 轻量代码与文本编辑器 |

---

# 🤖 AI Tools

| APP | 功能简介 |
|---|---|
| ChatGPT | OpenAI 官方 AI 客户端 |
| Claude | Anthropic AI 工具 |
| Gemini | Google AI 工具 |
| ChatGPT Atlas | 第三方 AI 客户端 |

---

# 🧹 System Tools

| APP | 功能简介 |
|---|---|
| AppCleaner | 卸载 APP 并清理残留 |
| DaisyDisk | 磁盘空间可视化工具 |
| AdGuard | 广告与 Tracker 拦截 |
| Tailscale | 零配置异地组网 |
| macshot | 截图工具 |

---

# 📦 Compression Tools

| APP | 功能简介 |
|---|---|
| Keka | macOS 解压缩神器 |
| The Unarchiver | 冷门格式兼容优秀 |

---

# 🎬 Media & Content

| APP | 功能简介 |
|---|---|
| IINA | macOS 本地播放器 |
| OBS | 录屏与直播工具 |
| 剪映专业版 | 视频剪辑工具 |
| Aegisub | 字幕编辑工具 |
| NetNewsWire | RSS 阅读器 |

---

# 🌐 Network & Proxy

| APP | 功能简介 |
|---|---|
| Shadowrocket | Apple 平台代理工具 |
| v2rayN | 网络代理与分流工具 |

---

# ☁️ Cloud & NAS

| APP | 功能简介 |
|---|---|
| MEGAsync | MEGA 云盘客户端 |
| UGREEN NAS | 绿联 NAS 官方客户端 |
| Synology Drive Client | 群晖同步工具 |
| 夸克网盘 | 国内云盘工具 |

---

# 💬 Communication

| APP | 功能简介 |
|---|---|
| Telegram | 国际化即时通讯工具 |
| WhatsApp | 海外主流通讯工具 |
| 微信 | 国内主力即时通讯工具 |
| 企业微信 | 企业办公通讯工具 |
| TIM | 腾讯轻量办公版 QQ |
| Tuta Mail | 加密邮件客户端 |
| mail.com | 邮件客户端 |

---

# 📄 Office

| APP | 功能简介 |
|---|---|
| Microsoft Word | 文档编辑工具 |
| Microsoft Excel | 数据分析工具 |
| Microsoft PowerPoint | 演示文稿工具 |

---

# 🎵 Entertainment

| APP | 功能简介 |
|---|---|
| 迅雷 | 下载工具 |
| 爱奇艺 | 视频平台 |
| 优酷 | 视频平台 |

---

# 💰 Finance

| APP | 功能简介 |
|---|---|
| 同花顺 | 股票行情与交易工具 |

---

# 🖥️ Remote & Virtualization

| APP | 功能简介 |
|---|---|
| Windows App | 微软远程桌面工具 |

---

# 📑 PDF Tools

| APP | 功能简介 |
|---|---|
| Adobe Acrobat | PDF 编辑工具 |
| Acrobat Distiller | PDF 转换工具 |

---

---

# 📖 Detailed Introduction

# 🚀 Alfred 5

> macOS 效率神器，也是我日常使用频率最高的软件之一。

### 功能特点

- 全局搜索
- Workflow 自动化
- 剪贴板历史
- Shell Script 执行
- 文件快速定位
- 浏览器书签搜索
- Snippets 文本扩展

### 我的使用场景

- 快速启动 APP
- SSH 服务器
- 搜索 Obsidian 笔记
- AI 工作流联动
- 一键打开常用项目

### 官网

https://www.alfredapp.com/

---

# 🚀 Rectangle

> macOS 最实用的窗口管理工具之一。

### 功能特点

- 左右分屏
- 四角布局
- 多显示器支持
- 快捷键窗口移动
- 类 Windows 分屏体验

### 我的使用场景

- 双屏办公
- 浏览器 + Terminal 分屏
- 视频剪辑布局
- 开发环境窗口整理

### 官网

https://rectangleapp.com/

---

# 💻 iTerm2

> macOS 开发者必装终端。

### 功能特点

- 分屏终端
- SSH Profile
- 自动补全
- Shell Integration
- 自定义主题
- 快捷键增强

### 我的使用场景

- SSH 远程服务器
- Docker 管理
- NAS 运维
- Proxmox / Linux 管理

### 官网

https://iterm2.com/

---

# 🤖 ChatGPT

> OpenAI 官方 AI 客户端。

### 功能特点

- AI 对话
- 代码辅助
- 文档总结
- 翻译
- 学习辅助
- 图像识别

### 我的使用场景

- 编程辅助
- Linux 运维
- 文档整理
- Markdown 编写
- AI 自动化

### 官网

https://chatgpt.com/

### App Store

https://apps.apple.com/app/chatgpt/id6448311069

---

# 🧹 DaisyDisk

> macOS 最直观的磁盘清理工具之一。

### 功能特点

- 磁盘可视化
- 大文件扫描
- 拖拽删除
- SSD 空间分析

### 我的使用场景

- 清理缓存
- 清理 Docker 数据
- NAS 下载目录整理
- 视频素材管理

### 官网

https://daisydiskapp.com/

---

# 🌐 Tailscale

> NAS 用户几乎绕不开的远程组网神器。

### 功能特点

- 基于 WireGuard
- 零配置组网
- 异地访问
- 内网穿透
- 远程 SSH

### 我的使用场景

- 异地访问 NAS
- 远程管理 Linux
- 家庭服务器互联

### 官网

https://tailscale.com/

---

# 🎬 IINA

> macOS 最优秀本地播放器之一。

### 功能特点

- 基于 mpv
- HDR 支持
- 在线视频
- 字幕增强
- 手势控制

### 我的使用场景

- 本地视频播放
- NAS 视频播放
- 字幕调试
- HDR 视频观看

### 官网

https://iina.io/

---

# ☁️ UGREEN NAS

> 绿联 NAS 官方客户端。

### 功能特点

- 文件同步
- 相册备份
- 远程访问
- NAS 管理
- 文件分享

### 我的使用场景

- 家庭文件中心
- iPhone 自动备份
- 异地文件同步

### 官网

https://www.ugnas.com/

---

# 💬 Telegram

> 国际化即时通讯工具。

### 功能特点

- Bot 生态
- 超大群组
- 文件传输
- 多平台同步
- 频道订阅

### 我的使用场景

- 技术社区
- AI 资讯
- 自动化通知
- NAS 消息推送

### 官网

https://telegram.org/

---

# 📌 Keep Updating

后续还会继续增加：

- Homebrew 工具
- Docker 工具链
- NAS 工具
- AI 工具链
- 开发环境
- 浏览器插件
- Menu Bar 工具

持续更新中 🚀
