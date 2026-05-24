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
![Chip](https://img.shields.io/badge/Apple%20Silicon-M%20Series-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Updated-success?style=for-the-badge)

</div>

> 我的 macOS 常用软件清单。  
> 主要面向 Apple Silicon（M 系列）平台，兼顾效率、开发、NAS、AI 与日常娱乐。  
> 持续更新中 🚀

---

# 🚀 Efficiency & Productivity

## Alfred 5
> macOS 效率神器。  
> 支持全局搜索、工作流自动化、剪贴板历史、快速启动等功能。  
> 在我这里基本属于系统级必装软件。

---

## CheatSheet
> 长按 `⌘ Command` 即可显示当前应用的快捷键。  
> 对新软件学习成本降低非常明显。

---

## Rectangle
> macOS 窗口管理工具。  
> 用快捷键实现类似 Windows 的窗口分屏体验。

---

## FlowVision
> AI 工作流工具。  
> 用于快速整合 AI 能力与自动化流程。

---

## TablePro
> 数据表格工具。  
> 比系统自带表格体验更现代，适合轻量数据处理。

---

## Easydict
> 轻量翻译工具。  
> 支持划词翻译与快捷查询。

---

# 💻 Development & Terminal

## iTerm2
> 替代 macOS 默认终端。  
> 支持分屏、快捷键、主题、自定义配置等高级功能。  
> 对开发者来说几乎是必备终端。

---

## GitHub Desktop
> GitHub 官方桌面客户端。  
> 用于管理 Git 仓库与快速提交代码。

---

## FileZilla
> FTP / SFTP 文件传输工具。  
> 用于 NAS、服务器与远程文件管理。

---

## CotEditor
> 轻量级文本编辑器。  
> 打开速度快，适合编辑配置文件与代码片段。

---

# 🤖 AI Tools

## ChatGPT
> OpenAI 官方客户端。  
> 目前日常使用频率最高的 AI 工具之一。

---

## Claude
> Anthropic 推出的 AI 工具。  
> 长文本能力与代码阅读体验不错。

---

## Gemini
> Google AI 工具。  
> 与 Google 生态整合较深。

---

## ChatGPT Atlas
> 第三方 ChatGPT 客户端。  
> 提供不同形式的 AI 交互体验。

---

# 🧹 System Tools

## AppCleaner
> 卸载 APP 时自动清理残留文件。  
> macOS 必备清理工具之一。

---

## DaisyDisk
> 磁盘空间可视化工具。  
> 能快速找到大文件与垃圾数据。

---

## AdGuard
> 广告拦截工具。  
> 可过滤网页广告与部分追踪请求。

---

## Tailscale
> 零配置异地组网工具。  
> 用于远程访问 NAS、服务器与家庭网络。

---

## macshot
> 截图工具。  
> 比系统截图功能更灵活。

---

# 📦 Compression Tools

## Keka
> macOS 解压缩神器。  
> UI 简洁，兼容性优秀。

---

## The Unarchiver
> 经典解压缩工具。  
> 对冷门压缩格式兼容较好。

---

# 🎬 Media & Content

## IINA
> macOS 本地播放器。  
> 基于 mpv，支持格式非常丰富。

---

## OBS
> 直播与录屏工具。  
> 适用于录课、直播与屏幕录制。

---

## 剪映专业版
> 视频剪辑工具。  
> 对中文用户来说上手成本较低。

---

## Aegisub
> 字幕编辑工具。  
> 用于字幕时间轴与字幕特效处理。

---

## NetNewsWire
> RSS 阅读器。  
> 用于订阅博客与技术资讯。

---

# 🌐 Network & Proxy

## Shadowrocket
> Apple 平台代理工具。  
> 在 Apple Silicon 平台兼容性不错。

---

## v2rayN
> 网络代理工具。  
> 用于科学上网与网络调试。

---

# ☁️ Cloud & NAS

## MEGAsync
> MEGA 云盘客户端。  
> 提供大容量云同步。

---

## UGREEN NAS
> 绿联 NAS 客户端。  
> 用于文件同步与 NAS 管理。

---

## Synology Drive Client
> 群晖 NAS 同步工具。  
> 文件同步体验成熟稳定。

---

## 夸克网盘
> 国内云盘工具。  
> 下载体验不错。

---

# 💬 Communication

## Telegram
> 即时通讯工具。  
> 技术圈与国际化社区使用频率较高。

---

## WhatsApp
> 海外常用通讯工具。

---

## 微信
> 国内主力即时通讯工具。

---

## 企业微信
> 企业办公通讯工具。

---

## TIM
> 腾讯轻量办公版 QQ。  
> 相比 QQ 更简洁。

---

## mail.com
> 邮件客户端。

---

## Tuta Mail
> 注重隐私的加密邮件服务。

---

# 📄 Office

## Microsoft Word
> 文档编辑工具。

---

## Microsoft Excel
> 数据处理与表格工具。

---

## Microsoft PowerPoint
> 演示文稿工具。

---

# 🎵 Entertainment

## 爱奇艺
> 视频平台。

---

## 优酷
> 视频平台。

---

## 迅雷
> 下载工具。  
> 在 PT / 大文件下载场景仍然很好用。

---

# 💰 Finance

## 同花顺
> 股票交易工具。  
> 国内用户使用量较大的行情软件。

---

# 🖥️ Virtualization & Remote

## Windows App
> 微软远程桌面工具。  
> 用于远程连接 Windows 主机。

---

# 📑 PDF Tools

## Adobe Acrobat
> PDF 编辑神器。  
> 支持 PDF 编辑、签名、转换等功能。

---

## Acrobat Distiller
> Adobe PDF 转换工具。

---

# 📌 About

- Platform: macOS
- Chip: Apple Silicon (M Series)
- Focus: Productivity / Development / AI / NAS / Media
- Keep Updating 🚀

---

<div align="center">

⭐ 如果这个仓库对你有帮助，欢迎 Star

</div>
