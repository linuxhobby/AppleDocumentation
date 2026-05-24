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

### Alfred
> macOS 系统下的尖刀神器，对标产品是 Raycast

### Applite
> Brew 官方推荐的图形化工具

### Rectangle
> 快捷键窗口管理工具

### Cheatsheet
> 按住 `Command ⌘` 键可显示当前应用的快捷键

---

## 📄 Office & Productivity

### Adobe Acrobat
> PDF 编辑神器

### Xmind
> 思维导图工具

### 腾讯会议
> 远程会议工具

---

## 🧹 System Tools

### AppCleaner
> 卸载 APP 应用时同时删除关联文件

### DaisyDisk
> 通过交互式图形直观查看磁盘使用情况，快速清理垃圾文件

---

## 💻 Development & Terminal

### iTerm2
> 替代系统自带终端，其实 Tabby 也挺好用

---

## 📦 Compression Tools

### Keka
> 解压缩工具

### The Unarchiver
> 解压缩工具

---

## 🖥️ Virtualization & Remote

### Parallels Desktop
> Apple 平台最强虚拟机工具之一

### Windows App
> 微软官方远程连接工具

---

## 🎵 Media & Entertainment

### Shazam
> 听音乐识别歌曲

### IINA
> macOS 本地播放器

### 芒果TV
> 视频播放器

### 爱奇艺
> 视频播放器

### 优酷
> 视频播放器

### 腾讯视频
> 视频播放器

---

## 🌐 Proxy & Network

### Shadowrocket
> iPhone 下的代理软件，M 系列芯片可用

### v2rayN
> 代理工具

---

## 💬 Communication

### Telegram
> 电报，即时通讯工具

### X (Twitter)
> 社交平台

### WhatsApp
> 即时通讯工具

### WeChat（微信）
> 即时通讯工具

### 企业微信
> 即时通讯工具

### QQ
> 即时通讯工具

---

## ☁️ Cloud Storage

### Google Drive
> 云盘

### OneDrive
> 云盘

### MEGAsync
> 云盘

### Dropbox
> 云盘

### Box Sync
> 云盘

### 阿里云盘
> 云盘

### 夸克
> 云盘

---

## 📧 Mail Clients

### Tuta Mail
> 邮件客户端

### mail.com
> 邮件客户端

---

## 🤖 AI Tools

### ChatGPT
> 目前口碑最好的 AI 之一

---

## ⬇️ Download Tools

### 迅雷
> 下载软件

---

## 🖨️ Printer & Apple Tools

### HP Easy Scan + HP Utility
> 惠普打印机扫描工具

### 爱思助手
> 专业苹果刷机与管理助手

---

## 💰 Finance & Crypto

### BitPay
> 比特币钱包

### 同花顺
> 股票交易工具

---

## 🎬 Subtitle Tools

### Aegisub
> 字幕编辑工具

---

## 🗄️ NAS Tools

### UGREEN NAS
> 绿联 NAS 客户端工具
