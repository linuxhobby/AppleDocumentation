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
> 主要围绕效率、开发、AI、NAS、影音娱乐与日常办公打造。  
> 平台基于 Apple Silicon（M 系列）环境。  
> 持续更新中 🚀

---

# 🚀 Efficiency & Productivity

## Alfred 5
> macOS 顶级效率工具。  
> 支持：
>
> - 全局搜索
> - Workflow 自动化
> - 剪贴板历史
> - 文件快速定位
> - 浏览器书签搜索
> - Shell Script 执行
> - 应用快速启动
>
> 基本已经替代 Spotlight。  
> 深度用户甚至可以把它当成半个启动器 + 自动化平台。

- 官网：https://www.alfredapp.com/

---

## CheatSheet
> 长按 `⌘ Command` 即可查看当前应用所有快捷键。  
> 对新软件学习非常友好。
>
> 特别适合：
>
> - 视频剪辑
> - IDE
> - Photoshop
> - Office 软件
>
> 快速记忆快捷键效率极高。

- 官网：https://www.mediaatelier.com/CheatSheet/

---

## Rectangle
> macOS 窗口管理工具。  
> 提供类似 Windows 的窗口分屏体验。
>
> 支持：
>
> - 左右分屏
> - 四角布局
> - 快捷键控制窗口
> - 多显示器支持
>
> 对多任务办公帮助非常大。

- 官网：https://rectangleapp.com/

---

## FlowVision
> AI 工作流工具。  
> 可用于：
>
> - AI 自动化流程
> - 文档处理
> - 数据流转
> - AI Agent 调度
>
> 适合重度 AI 用户。

- 官网：https://flowvision.me/

---

## TablePlus
> 现代化数据库管理工具。  
> 支持：
>
> - MySQL
> - PostgreSQL
> - SQLite
> - Redis
> - MariaDB
>
> UI 非常现代，性能也很优秀。

- 官网：https://tableplus.com/

---

## Easydict
> 轻量翻译工具。  
> 支持：
>
> - OCR
> - 划词翻译
> - 快捷键查询
> - 多翻译源切换
>
> 程序员和英语阅读用户体验非常舒服。

- GitHub：https://github.com/tisfeng/Easydict

---

# 💻 Development & Terminal

## iTerm2
> macOS 最强终端之一。  
> 相比系统 Terminal：
>
> - 支持分屏
> - 自动补全
> - SSH Profile
> - 主题配置
> - Shell Integration
> - 快捷键增强
>
> 几乎是开发者必装工具。

- 官网：https://iterm2.com/

---

## GitHub Desktop
> GitHub 官方桌面客户端。  
> 用于：
>
> - Git 仓库管理
> - Commit 提交
> - Branch 管理
> - Pull Request
>
> 对 Git 新手非常友好。

- 官网：https://desktop.github.com/

---

## FileZilla
> FTP / SFTP 文件管理工具。  
> 常用于：
>
> - NAS 文件传输
> - Linux 服务器管理
> - Web 项目部署
>
> 稳定性很好。

- 官网：https://filezilla-project.org/

---

## CotEditor
> 轻量文本编辑器。  
> 特点：
>
> - 启动速度快
> - 低资源占用
> - 支持代码高亮
> - UTF-8 支持优秀
>
> 非常适合编辑配置文件。

- 官网：https://coteditor.com/

---

# 🤖 AI Tools

## ChatGPT
> OpenAI 官方客户端。  
> 目前最常用 AI 工具之一。
>
> 主要用途：
>
> - AI 对话
> - 编程辅助
> - 文档总结
> - 翻译
> - 学习辅助
>
> 已逐渐变成日常工作入口。

- 官网：https://chatgpt.com/
- App Store：https://apps.apple.com/app/chatgpt/id6448311069

---

## Claude
> Anthropic 推出的 AI 工具。  
> 优势：
>
> - 超长上下文
> - 文档理解强
> - 代码阅读体验优秀
>
> 特别适合阅读大型代码库。

- 官网：https://claude.ai/

---

## Gemini
> Google AI 工具。  
> 与 Google 生态深度整合。
>
> 适合：
>
> - 搜索增强
> - Google Workspace
> - AI 辅助办公

- 官网：https://gemini.google.com/

---

# 🧹 System Tools

## AppCleaner
> macOS 卸载神器。  
> 删除 APP 时自动清理：
>
> - 缓存
> - 偏好设置
> - 日志
> - 残留文件
>
> 避免系统越用越臃肿。

- 官网：https://freemacsoft.net/appcleaner/

---

## DaisyDisk
> 磁盘空间可视化工具。  
> 使用图形化方式查看：
>
> - 大文件
> - 缓存
> - 无用数据
>
> 清理磁盘效率非常高。

- 官网：https://daisydiskapp.com/

---

## AdGuard
> 广告拦截工具。  
> 支持：
>
> - 网页广告过滤
> - DNS 过滤
> - 隐私保护
> - Tracker 拦截
>
> 浏览体验提升明显。

- 官网：https://adguard.com/

---

## Tailscale
> 零配置组网工具。  
> 基于 WireGuard。
>
> 可实现：
>
> - 异地访问 NAS
> - 家庭组网
> - 内网穿透
> - 远程 SSH
>
> 对 NAS 用户非常友好。

- 官网：https://tailscale.com/

---

# 📦 Compression Tools

## Keka
> macOS 解压缩神器。  
> 支持：
>
> - 7z
> - zip
> - rar
> - tar
> - gzip
>
> UI 非常简洁。

- 官网：https://www.keka.io/

---

## The Unarchiver
> 老牌解压缩工具。  
> 对冷门格式兼容优秀。

- 官网：https://theunarchiver.com/

---

# 🎬 Media & Content

## IINA
> macOS 最优秀本地播放器之一。  
> 基于 mpv。
>
> 支持：
>
> - HDR
> - 字幕
> - 在线视频
> - 手势控制
> - 倍速播放
>
> UI 非常符合 macOS 风格。

- 官网：https://iina.io/

---

## OBS
> 开源直播与录屏工具。  
> 用于：
>
> - 直播
> - 屏幕录制
> - 推流
> - 教学录课
>
> 内容创作者必备。

- 官网：https://obsproject.com/

---

## 剪映专业版
> 中文用户最容易上手的视频剪辑工具之一。
>
> 支持：
>
> - AI 字幕
> - 特效
> - 调色
> - 模板
> - 多轨剪辑
>
> 对短视频创作者非常友好。

- 官网：https://www.capcut.cn/

---

## Aegisub
> 专业字幕编辑工具。  
> 常用于：
>
> - 时间轴校对
> - ASS 字幕
> - 字幕特效
>
> 动漫字幕组常用工具。

- 官网：http://www.aegisub.org/

---

# 🌐 Network & Proxy

## Shadowrocket
> Apple 平台代理工具。  
> 支持：
>
> - Clash
> - V2Ray
> - Trojan
> - Shadowsocks
>
> Apple 用户常见网络工具。

- App Store：https://apps.apple.com/app/shadowrocket/id932747118

---

## v2rayN
> Windows / macOS 网络代理工具。  
> 适用于：
>
> - 科学上网
> - 网络调试
> - 分流规则
>
> 社区生态成熟。

- GitHub：https://github.com/2dust/v2rayN

---

# ☁️ Cloud & NAS

## UGREEN NAS
> 绿联 NAS 官方客户端。
>
> 支持：
>
> - 文件同步
> - 相册备份
> - 远程访问
> - NAS 管理
>
> 适合家庭存储用户。

- 官网：https://www.ugnas.com/

---

## Synology Drive Client
> 群晖同步工具。  
> 类似 Dropbox 的体验。
>
> 用于：
>
> - 文件同步
> - 自动备份
> - 多设备协同

- 官网：https://www.synology.com/

---

# 💬 Communication

## Telegram
> 国际化即时通讯工具。  
> 技术圈使用频率极高。
>
> 优势：
>
> - Bot 生态
> - 超大群组
> - 文件传输
> - 多平台同步

- 官网：https://telegram.org/

---

## 微信
> 国内主力即时通讯工具。
>
> 基本覆盖：
>
> - 社交
> - 工作
> - 支付
> - 文件传输

- 官网：https://weixin.qq.com/

---

# 📄 Office

## Microsoft Excel
> 数据处理核心工具。
>
> 用于：
>
> - 数据分析
> - 函数处理
> - 财务统计
> - 数据透视表

- 官网：https://www.microsoft.com/microsoft-365/excel

---

# 🎵 Entertainment

## 迅雷
> 老牌下载工具。  
> 在：
>
> - PT
> - 大文件下载
> - 磁力链接
>
> 场景依旧非常强。

- 官网：https://www.xunlei.com/

---

# 💰 Finance

## 同花顺
> 国内主流股票行情工具。
>
> 支持：
>
> - A 股
> - 港股
> - 基金
> - Level2
> - 条件选股

- 官网：https://www.10jqka.com.cn/

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
