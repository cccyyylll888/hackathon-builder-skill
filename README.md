<div align="center">

# Hackathon Builder Skill

把黑客松赛题、剩余时间、团队能力和一个模糊想法，压缩成可落地的 MVP、技术文档、Demo、海报和路演稿。

[![Codex Skill](https://img.shields.io/badge/Codex-Skill-111827?style=flat-square)](./skills/hackathon-builder/SKILL.md)
[![Language](https://img.shields.io/badge/Language-Chinese--first-blue?style=flat-square)](./skills/hackathon-builder/SKILL.md)
[![Status](https://img.shields.io/badge/Status-Ready%20to%20Install-brightgreen?style=flat-square)](./scripts/install.ps1)

</div>

## 它是什么

`hackathon-builder` 是一个面向黑客松全流程交付的 Codex Skill。它不是只帮你“想点子”，而是把比赛要求、评分标准、剩余时间、团队技术栈和交付物串成一条完整工作流：

```text
赛题文档 -> 创意生成/优化 -> 评分筛选 -> MVP 范围 -> 技术方案 -> 代码开发计划 -> Demo/海报/路演 -> GitHub 交付
```

它默认中文输出，技术名词保留英文，适合给学生队伍、个人开发者、黑客松组织者或 AI 创作者团队使用。

## 适合什么场景

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

## 如何使用

安装后，在 Codex 中直接调用：

```text
Use $hackathon-builder in full-sprint mode.
Here is the requirement doc. We have 24 hours, two frontend developers,
one Python/AI teammate, and no fixed idea yet.
```

更多示例：

```text
Use $hackathon-builder to generate 8 ideas from this hackathon brief.
We have 2 days left, the team is good at React and Python, and the final deliverables are code, poster, technical document, and a 3-minute pitch.
```

```text
Use $hackathon-builder to improve this idea for a 1-day hackathon.
Then produce an MVP scope, technical document, demo script, and poster copy.
```

```text
Use $hackathon-builder in build-plan mode.
The chosen stack is Vue + FastAPI. Turn this MVP brief into frontend, backend, AI workflow, data, test, and deployment tasks.
```

```text
Use $hackathon-builder in pitch mode.
Generate a 20-second hook, 3-minute roadshow script, and judge Q&A from our technical document.
```

## 技术栈策略

这个 skill 不会强行绑定默认技术栈。它会先看：

- 团队最熟悉什么；
- 剩余时间是否允许复杂架构；
- 是否需要真实后端、数据库或 AI API；
- Demo 是本地展示、网页部署还是移动端展示；
- 评委更看重体验完整度、技术深度还是创新表达。

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

### References

- `requirement-rubric.md`: 赛题要求与评分标准提取。
- `sprint-playbook.md`: 按剩余小时/天数压缩 MVP。
- `ideation-score.md`: 创意生成、优化、评分。
- `technical-doc-build.md`: 技术文档、架构与开发计划。
- `demo-poster-pitch.md`: Demo、海报、路演和 Q&A。
- `github-packaging.md`: GitHub 仓库交付清单。

### Templates

- idea scorecard
- PRD / MVP brief
- technical document
- architecture notes
- demo script
- poster brief
- roadshow script and judge Q&A
- app starter guidance

## 评分排序工具

`rank_ideas.py` 可以把 JSON 格式的创意评分转成 Markdown 排名表：

```powershell
python .\skills\hackathon-builder\scripts\rank_ideas.py .\ideas.json
```

示例输入：

```json
[
  {
    "name": "Fast Demo",
    "scores": {
      "insight": 4,
      "feasibility": 5,
      "demo": 5
    },
    "risk": "Thin AI depth",
    "fallback": "Explain deterministic AI mock"
  }
]
```

## 设计原则

- 先保证一个完整、可重复演示的主路径。
- 让评委在第二次点击前理解产品价值。
- 用评分标准反推功能优先级，而不是堆功能。
- 给所有 live AI/API 能力准备 mock 或 sample fallback。
- 最后阶段停止加功能，把时间留给稳定性、文档、海报和路演。

## 推送到自己的 GitHub

如果你 fork 或复制了这个项目：

```powershell
git init
git add .
git commit -m "Create hackathon builder skill"
git remote add origin <your-repo-url>
git push -u origin main
```

## 项目状态

当前版本已经包含可安装的 Codex Skill、完整模板、参考工作流、验证脚本和示例工具。下一步可以继续加入更多真实黑客松案例、跨平台安装脚本，或者为常见技术栈补充更具体的 starter 模板。
