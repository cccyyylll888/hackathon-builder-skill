<div align="center">

# Hackathon Builder Skill

把黑客松赛题、剩余时间、团队能力和一个模糊想法，压缩成可落地的 MVP、技术文档、Demo、海报和路演稿。

[![Codex Skill](https://img.shields.io/badge/Codex-Skill-111827?style=flat-square)](./skills/hackathon-builder/SKILL.md)
[![Language](https://img.shields.io/badge/Language-Simplified%20Chinese-blue?style=flat-square)](./README.zh-CN.md)
[![Status](https://img.shields.io/badge/Status-Ready%20to%20Install-brightgreen?style=flat-square)](./scripts/install.ps1)
[![Platform](https://img.shields.io/badge/Platform-Windows%20PowerShell-5391FE?style=flat-square)](./scripts/install.ps1)

**语言：** [English](./README.md) | 简体中文

</div>

---

## 这是什么？

`hackathon-builder` 是一个面向黑客松全流程交付的 Codex Skill。它不是只帮你“想点子”，而是把比赛要求、评分标准、剩余时间、团队能力和交付物串成一条完整工作流：

```text
赛题文档 -> 创意生成/优化 -> 评分筛选 -> MVP 范围 -> 技术方案 -> 代码开发计划 -> Demo/海报/路演 -> GitHub 交付
```

它适合学生队伍、个人开发者、黑客松组织者或 AI 创作者团队使用。默认可以中文输出，技术名词保留英文。

## 适合什么场景？

- 你拿到一份黑客松要求文档，但还不知道做什么项目。
- 你已经有一个想法，需要把它变得更有评审价值和 Demo 张力。
- 你只剩 1 天甚至几个小时，需要压缩范围，保住可演示路径。
- 你要生成技术文档、架构说明、Poster 文案、路演稿和评委 Q&A。
- 你希望 Codex 后续能继续帮你写前端、后端、AI 接口、Demo 数据和 README。

## 能力一览

| Mode | 用途 | 典型输出 |
|---|---|---|
| `ideate` | 根据赛题、赛道、时间和团队能力生成想法 | 6-10 个项目创意、用户场景、AI 价值、Demo 路径 |
| `improve` | 优化已有想法 | 定位重写、MVP 流程、删减建议、风险兜底 |
| `score` | 按评分标准比较想法 | 评分表、加权总分、推荐方向 |
| `tech-doc` | 生成技术文档 | 架构、模块、AI 流程、数据、安全、部署 |
| `build-plan` | 规划代码开发 | 前端、后端、AI、数据、测试、部署任务 |
| `demo-poster` | 准备 Demo 和海报 | 演示路线、兜底方案、海报标题和三步故事 |
| `pitch` | 准备路演 | 20 秒 hook、3 分钟稿、评委 Q&A |
| `full-sprint` | 一次跑完整流程 | 从赛题理解到 GitHub-ready 交付包 |

## 快速安装

克隆仓库后，在仓库根目录执行：

```powershell
.\scripts\install.ps1
```

脚本会把 skill 复制到当前用户的 Codex skill 目录：

```text
%USERPROFILE%\.codex\skills\hackathon-builder
```

如果本地已经安装过，使用 `-Force` 覆盖：

```powershell
.\scripts\install.ps1 -Force
```

验证 skill 结构：

```powershell
.\scripts\validate.ps1
```

成功时会看到：

```text
Skill is valid!
All required hackathon-builder files are present.
```

## 使用示例

```text
Use $hackathon-builder in full-sprint mode.
Here is the requirement doc. We have 24 hours, two frontend developers,
one Python/AI teammate, and no fixed idea yet.
```

```text
Use $hackathon-builder to improve this idea for a 1-day hackathon.
Then produce an MVP scope, technical document, demo script, and poster copy.
```

```text
Use $hackathon-builder in pitch mode.
Generate a 20-second hook, 3-minute roadshow script, and judge Q&A from our technical document.
```

## 技术栈策略

这个 skill 不会强行绑定默认技术栈。它会先看团队最熟悉什么、剩余时间、是否需要真实后端/数据库/AI API、Demo 展示方式，以及评委更看重体验完整度、技术深度还是创新表达。

如果你已经指定技术栈，它会沿用你的选择。如果没有指定，它会给出低风险推荐，并说明取舍。

## 内置资源

```text
skills/hackathon-builder/
  SKILL.md                         # Skill 主说明
  agents/openai.yaml               # Codex UI 元数据
  references/                      # 细分工作流参考
  assets/templates/                # 可复用交付模板
  scripts/rank_ideas.py            # 创意评分排序工具
scripts/
  install.ps1                      # 本机安装脚本
  validate.ps1                     # 结构校验脚本
```

## 设计原则

- 先保证一个完整、可重复演示的主路径。
- 让评委在第二次点击前理解产品价值。
- 用评分标准反推功能优先级，而不是堆功能。
- 给所有 live AI/API 能力准备 mock 或 sample fallback。
- 最后阶段停止加功能，把时间留给稳定性、文档、海报和路演。
