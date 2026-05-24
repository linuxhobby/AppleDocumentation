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
> 主要围绕效率、开发、AI、NAS、影音娱乐与日常办公打造。  
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

# Alfred 5

> macOS 顶级效率工具，也是我日常使用频率最高的软件之一。

### 功能特点

- 全局搜索
- Workflow 自动化
- 剪贴板历史
- 文件搜索
- Shell Script 执行
- 浏览器书签搜索
- Snippets 文本扩展

### 我的使用场景

- 启动 APP
- 搜索 NAS 文件
- SSH 服务器
- AI 工作流联动
- 快速打开项目目录

### 官网

https://www.alfredapp.com/

---

# CheatSheet

> 长按 `⌘ Command` 即可查看当前软件全部快捷键。

### 功能特点

- 自动识别快捷键
- 无需额外配置
- 支持绝大多数 macOS 软件

### 我的使用场景

- 学习 Premiere 快捷键
- 学习 Photoshop
- IDE 快捷键查询

### 官网

https://www.mediaatelier.com/CheatSheet/

---

# Rectangle

> macOS 窗口管理神器。

### 功能特点

- 左右分屏
- 四角布局
- 多显示器支持
- 快捷键窗口移动

### 我的使用场景

- Terminal + 浏览器分屏
- 双屏办公
- 视频剪辑布局

### 官网

https://rectangleapp.com/

---

# Easydict

> 非常优秀的 macOS 翻译工具。

### 功能特点

- OCR 识别
- 划词翻译
- 多翻译源
- 快捷键呼出

### 我的使用场景

- 阅读英文文档
- 阅读 GitHub
- 翻译技术文章

### GitHub

https://github.com/tisfeng/Easydict

---

# 💻 Development & Terminal

# iTerm2

> macOS 开发者必装终端。

### 功能特点

- 分屏终端
- SSH Profile
- 自动补全
- Shell Integration
- 快捷键增强

### 我的使用场景

- Linux 运维
- Docker 管理
- NAS 管理
- SSH 远程

### 官网

https://iterm2.com/

---

# GitHub Desktop

> GitHub 官方桌面客户端。

### 功能特点

- Git 仓库管理
- Branch 管理
- Pull Request
- 图形化 Git

### 我的使用场景

- Markdown 仓库维护
- 配置文件同步
- GitHub 项目管理

### 官网

https://desktop.github.com/

---

# FileZilla

> 老牌 FTP / SFTP 工具。

### 功能特点

- FTP
- SFTP
- 断点续传
- 多站点管理

### 我的使用场景

- Linux 文件上传
- NAS 文件管理
- 网站部署

### 官网

https://filezilla-project.org/

---

# CotEditor

> 轻量级文本编辑器。

### 功能特点

- 打开速度快
- UTF-8 支持优秀
- 代码高亮

### 我的使用场景

- 编辑配置文件
- Markdown 编辑
- Shell Script 编辑

### 官网

https://coteditor.com/

---

# 🤖 AI Tools

# ChatGPT

> OpenAI 官方客户端。

### 功能特点

- AI 对话
- 编程辅助
- 文档总结
- 图像识别
- AI 翻译

### 我的使用场景

- Linux 运维
- 编程辅助
- 文档整理
- README 编写

### 官网

https://chatgpt.com/

### App Store

https://apps.apple.com/app/chatgpt/id6448311069

---

# Claude

> Anthropic AI 工具。

### 功能特点

- 超长上下文
- 代码阅读
- 文档理解
- AI 总结

### 我的使用场景

- 阅读大型代码库
- 长文档分析
- 技术文档整理

### 官网

https://claude.ai/

---

# Gemini

> Google AI 工具。

### 功能特点

- Google 生态整合
- AI 搜索
- Workspace 联动

### 我的使用场景

- Google 搜索增强
- AI 辅助办公

### 官网

https://gemini.google.com/

---

# 🧹 System Tools

# AppCleaner

> macOS 卸载神器。

### 功能特点

- 删除残留
- 清理缓存
- 清理偏好设置

### 我的使用场景

- 删除测试软件
- 清理无用 APP

### 官网

https://freemacsoft.net/appcleaner/

---

# DaisyDisk

> macOS 最直观的磁盘清理工具。

### 功能特点

- 磁盘可视化
- 大文件扫描
- 快速删除

### 我的使用场景

- 清理 Docker 数据
- 清理视频缓存
- SSD 空间管理

### 官网

https://daisydiskapp.com/

---

# AdGuard

> 广告过滤工具。

### 功能特点

- 网页广告过滤
- DNS 过滤
- Tracker 拦截

### 我的使用场景

- Safari 广告过滤
- YouTube 广告优化

### 官网

https://adguard.com/

---

# Tailscale

> 基于 WireGuard 的零配置组网工具。

### 功能特点

- 内网穿透
- 异地访问
- 远程 SSH

### 我的使用场景

- 远程 NAS
- 远程 Linux
- 家庭组网

### 官网

https://tailscale.com/

---

# 📦 Compression Tools

# Keka

> macOS 解压缩神器。

### 功能特点

- 支持 7z
- 支持 rar
- 支持 zip
- 压缩率高

### 我的使用场景

- 压缩备份
- NAS 文件整理

### 官网

https://www.keka.io/

---

# The Unarchiver

> 老牌解压缩工具。

### 功能特点

- 冷门格式支持优秀
- 操作简单

### 我的使用场景

- 解压旧压缩包
- 解压冷门格式

### 官网

https://theunarchiver.com/

---

# 🎬 Media & Content

# IINA

> macOS 最优秀播放器之一。

### 功能特点

- HDR 支持
- 字幕增强
- 在线视频
- 倍速播放

### 我的使用场景

- NAS 视频播放
- HDR 视频
- 字幕调试

### 官网

https://iina.io/

---

# OBS

> 开源录屏与直播工具。

### 功能特点

- 推流
- 录屏
- 多场景
- 插件生态

### 我的使用场景

- 教学录课
- YouTube 视频
- 屏幕录制

### 官网

https://obsproject.com/

---

# 剪映专业版

> 中文用户最好上手的视频工具之一。

### 功能特点

- AI 字幕
- 多轨编辑
- 特效
- 模板

### 我的使用场景

- 短视频
- 教学视频
- 字幕制作

### 官网

https://www.capcut.cn/

---

# Aegisub

> 专业字幕工具。

### 功能特点

- ASS 字幕
- 时间轴
- 字幕特效

### 我的使用场景

- 字幕校对
- 字幕压制

### 官网

http://www.aegisub.org/

---

# 🌐 Network & Proxy

# Shadowrocket

> Apple 平台代理工具。

### 功能特点

- Clash
- V2Ray
- Trojan
- 分流规则

### 我的使用场景

- 科学上网
- 网络分流

### App Store

https://apps.apple.com/app/shadowrocket/id932747118

---

# v2rayN

> 网络代理工具。

### 功能特点

- 节点管理
- 分流
- 网络调试

### 我的使用场景

- 网络测试
- 科学上网

### GitHub

https://github.com/2dust/v2rayN

---

# ☁️ Cloud & NAS

# UGREEN NAS

> 绿联 NAS 官方客户端。

### 功能特点

- 文件同步
- 相册备份
- 远程访问
- 文件分享

### 我的使用场景

- iPhone 自动备份
- 家庭媒体中心
- NAS 文件同步

### 官网

https://www.ugnas.com/

---

# Synology Drive Client

> 群晖同步工具。

### 功能特点

- 文件同步
- 自动备份
- 多设备协同

### 我的使用场景

- 文档同步
- NAS 自动备份

### 官网

https://www.synology.com/

---

# 💬 Communication

# Telegram

> 国际化即时通讯工具。

### 功能特点

- Bot 生态
- 超大群组
- 文件传输
- 多平台同步

### 我的使用场景

- 技术社区
- AI 社区
- NAS 通知

### 官网

https://telegram.org/

---

# 微信

> 国内主力通讯工具。

### 功能特点

- 即时通讯
- 文件传输
- 视频会议
- 微信支付

### 我的使用场景

- 工作沟通
- 文件传输
- NAS 文件发送

### 官网

https://weixin.qq.com/

---

# TIM

> 腾讯轻量办公版 QQ。

### 功能特点

- 更简洁
- 无复杂娱乐功能
- 办公导向

### 我的使用场景

- 办公消息
- 文件中转

### 官网

https://tim.qq.com/

---

# 📄 Office

# Microsoft Word

> 文档编辑工具。

### 功能特点

- DOCX 编辑
- 模板
- 协作

### 我的使用场景

- 文档编写
- 简历制作

### 官网

https://www.microsoft.com/microsoft-365/word

---

# Microsoft Excel

> 数据处理核心工具。

### 功能特点

- 数据分析
- 数据透视表
- 函数

### 我的使用场景

- 财务统计
- NAS 数据整理

### 官网

https://www.microsoft.com/microsoft-365/excel

---

# 🎵 Entertainment

# 迅雷

> 老牌下载工具。

### 功能特点

- PT 下载
- 磁力下载
- 大文件加速

### 我的使用场景

- NAS 下载
- 影视资源管理

### 官网

https://www.xunlei.com/

---

# 💰 Finance

# 同花顺

> 国内主流股票软件。

### 功能特点

- A 股
- 港股
- 基金
- Level2

### 我的使用场景

- 股票行情
- 财务观察

### 官网

https://www.10jqka.com.cn/

---

# 🖥️ Remote & Virtualization

# Windows App

> 微软远程桌面工具。

### 功能特点

- RDP
- 多设备同步
- Windows 远程控制

### 我的使用场景

- 远程 Windows
- 远程服务器

### 官网

https://apps.microsoft.com/

---

# 📑 PDF Tools

# Adobe Acrobat

> PDF 编辑神器。

### 功能特点

- PDF 编辑
- PDF 转换
- 签名
- OCR

### 我的使用场景

- PDF 修改
- 扫描件处理

### 官网

https://www.adobe.com/acrobat/

---

# 📌 Keep Updating

后续继续增加：

- Homebrew 工具链
- Docker 工具链
- AI 工具链
- Menu Bar 工具
- NAS 工具
- 浏览器插件

持续更新中 🚀
