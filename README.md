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

## Alfred 5
> macOS 效率神器。  
> 支持全局搜索、工作流自动化、剪贴板历史与快速启动。  
> 属于提升效率最明显的软件之一。

- 官网：https://www.alfredapp.com/

---

## CheatSheet
> 长按 `⌘ Command` 即可查看当前应用快捷键。  
> 对新软件学习帮助非常大。

- 官网：https://www.mediaatelier.com/CheatSheet/

---

## Rectangle
> macOS 窗口管理工具。  
> 提供类似 Windows 的分屏体验。

- 官网：https://rectangleapp.com/

---

## FlowVision
> AI 工作流工具。  
> 用于自动化与 AI 能力整合。

- 官网：https://flowvision.me/

---

## TablePro
> 现代化数据表格工具。  
> 比系统自带表格体验更优秀。

- 官网：https://tableplus.com/

---

## Easydict
> 轻量翻译工具。  
> 支持划词翻译与快捷查询。

- GitHub：https://github.com/tisfeng/Easydict

---

# 💻 Development & Terminal

## iTerm2
> 替代 macOS 默认终端。  
> 支持分屏、主题、自定义快捷键与高级终端功能。

- 官网：https://iterm2.com/

---

## GitHub Desktop
> GitHub 官方桌面客户端。  
> 用于 Git 仓库管理与代码提交。

- 官网：https://desktop.github.com/

---

## FileZilla
> FTP / SFTP 文件传输工具。  
> 常用于 NAS 与服务器文件管理。

- 官网：https://filezilla-project.org/

---

## CotEditor
> 轻量级文本编辑器。  
> 适合编辑配置文件与代码片段。

- 官网：https://coteditor.com/

---

# 🤖 AI Tools

## ChatGPT
> OpenAI 官方客户端。  
> 日常使用频率最高的 AI 工具之一。

- 官网：https://chatgpt.com/
- App Store：https://apps.apple.com/app/chatgpt/id6448311069

---

## Claude
> Anthropic 推出的 AI 工具。  
> 长文本与代码阅读体验优秀。

- 官网：https://claude.ai/

---

## Gemini
> Google AI 工具。  
> 与 Google 生态深度整合。

- 官网：https://gemini.google.com/

---

## ChatGPT Atlas
> 第三方 ChatGPT 工具。  
> 提供不同形式的 AI 交互体验。

---

# 🧹 System Tools

## AppCleaner
> 卸载 APP 时自动清理残留文件。  
> macOS 必备工具之一。

- 官网：https://freemacsoft.net/appcleaner/

---

## DaisyDisk
> 磁盘空间可视化工具。  
> 快速定位大文件与垃圾数据。

- 官网：https://daisydiskapp.com/
- App Store：https://apps.apple.com/app/daisydisk/id411643860

---

## AdGuard
> 广告拦截工具。  
> 支持网页广告与隐私保护。

- 官网：https://adguard.com/

---

## Tailscale
> 零配置异地组网工具。  
> 用于远程访问 NAS 与家庭网络。

- 官网：https://tailscale.com/

---

## macshot
> 截图工具。  
> 比系统截图功能更灵活。

- 官网：https://macshotapp.com/

---

# 📦 Compression Tools

## Keka
> macOS 解压缩神器。  
> UI 简洁，兼容性优秀。

- 官网：https://www.keka.io/
- App Store：https://apps.apple.com/app/keka/id470158793

---

## The Unarchiver
> 经典解压缩工具。  
> 对冷门压缩格式兼容性较好。

- 官网：https://theunarchiver.com/
- App Store：https://apps.apple.com/app/the-unarchiver/id425424353

---

# 🎬 Media & Content

## IINA
> macOS 本地播放器。  
> 基于 mpv，支持大量视频格式。

- 官网：https://iina.io/

---

## OBS
> 直播与录屏工具。  
> 适用于录课、直播与屏幕录制。

- 官网：https://obsproject.com/

---

## 剪映专业版
> 视频剪辑工具。  
> 中文用户上手非常简单。

- 官网：https://www.capcut.cn/

---

## Aegisub
> 字幕编辑工具。  
> 用于字幕时间轴与特效处理。

- 官网：http://www.aegisub.org/

---

## NetNewsWire
> RSS 阅读器。  
> 用于订阅博客与技术资讯。

- 官网：https://netnewswire.com/
- App Store：https://apps.apple.com/app/netnewswire-rss-reader/id1480640210

---

# 🌐 Network & Proxy

## Shadowrocket
> Apple 平台代理工具。  
> 在 Apple Silicon 平台兼容性不错。

- App Store：https://apps.apple.com/app/shadowrocket/id932747118

---

## v2rayN
> 网络代理工具。  
> 用于网络调试与科学上网。

- GitHub：https://github.com/2dust/v2rayN

---

# ☁️ Cloud & NAS

## MEGAsync
> MEGA 云盘客户端。  
> 提供大容量云同步。

- 官网：https://mega.io/sync

---

## UGREEN NAS
> 绿联 NAS 客户端。  
> 用于文件同步与 NAS 管理。

- 官网：https://www.ugnas.com/

---

## Synology Drive Client
> 群晖 NAS 同步工具。  
> 文件同步体验成熟稳定。

- 官网：https://www.synology.com/

---

## 夸克网盘
> 国内云盘工具。  
> 下载体验优秀。

- 官网：https://pan.quark.cn/

---

# 💬 Communication

## Telegram
> 国际化即时通讯工具。  
> 技术圈使用频率非常高。

- 官网：https://telegram.org/
- App Store：https://apps.apple.com/app/telegram/id747648890

---

## WhatsApp
> 海外主流即时通讯工具。

- 官网：https://www.whatsapp.com/
- App Store：https://apps.apple.com/app/whatsapp-messenger/id310633997

---

## 微信
> 国内主力即时通讯工具。

- 官网：https://weixin.qq.com/
- App Store：https://apps.apple.com/app/wechat/id836500024

---

## 企业微信
> 企业办公通讯工具。

- 官网：https://work.weixin.qq.com/

---

## TIM
> 腾讯轻量办公版 QQ。  
> 相比 QQ 更简洁。

- 官网：https://tim.qq.com/

---

## mail.com
> 邮件客户端。

- 官网：https://www.mail.com/

---

## Tuta Mail
> 注重隐私的加密邮件服务。

- 官网：https://tuta.com/

---

# 📄 Office

## Microsoft Word
> 文档编辑工具。

- 官网：https://www.microsoft.com/microsoft-365/word
- App Store：https://apps.apple.com/app/microsoft-word/id462054704

---

## Microsoft Excel
> 数据处理与表格工具。

- 官网：https://www.microsoft.com/microsoft-365/excel
- App Store：https://apps.apple.com/app/microsoft-excel/id462058435

---

## Microsoft PowerPoint
> 演示文稿工具。

- 官网：https://www.microsoft.com/microsoft-365/powerpoint
- App Store：https://apps.apple.com/app/microsoft-powerpoint/id462062816

---

# 🎵 Entertainment

## 爱奇艺
> 国内视频平台。

- 官网：https://www.iqiyi.com/

---

## 优酷
> 国内视频平台。

- 官网：https://www.youku.com/

---

## 迅雷
> 下载工具。  
> 在大文件下载场景依然非常好用。

- 官网：https://www.xunlei.com/

---

# 💰 Finance

## 同花顺
> 股票交易与行情工具。  
> 国内用户量非常大的炒股软件。

- 官网：https://www.10jqka.com.cn/

---

# 🖥️ Virtualization & Remote

## Windows App
> 微软远程桌面工具。  
> 用于远程连接 Windows 主机。

- 官网：https://apps.microsoft.com/

---

# 📑 PDF Tools

## Adobe Acrobat
> PDF 编辑神器。  
> 支持 PDF 编辑、签名与格式转换。

- 官网：https://www.adobe.com/acrobat/

---

## Acrobat Distiller
> Adobe PDF 转换工具。

- 官网：https://www.adobe.com/

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
