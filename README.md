<div align="center">

# Hackathon Builder Skill

Turn hackathon requirements, limited time, team skills, and a rough idea into a buildable MVP, technical documentation, demo plan, poster copy, pitch script, and GitHub-ready delivery package.

[![Codex Skill](https://img.shields.io/badge/Codex-Skill-111827?style=flat-square)](./skills/hackathon-builder/SKILL.md)
[![Language](https://img.shields.io/badge/Language-English%20%2B%20Chinese-blue?style=flat-square)](./README.md)
[![Status](https://img.shields.io/badge/Status-Ready%20to%20Install-brightgreen?style=flat-square)](./scripts/install.ps1)
[![Platform](https://img.shields.io/badge/Platform-Windows%20PowerShell-5391FE?style=flat-square)](./scripts/install.ps1)

**English first. 中文说明在下方。**

</div>

---

## What Is This?

`hackathon-builder` is a reusable Codex Skill for end-to-end hackathon execution. It helps a team move from a contest brief to a focused project direction, then all the way to implementation planning, technical docs, demo materials, poster content, roadshow scripts, and repository packaging.

It is designed for short, high-pressure hackathons where the winning move is not "more features", but a sharper user moment, a reliable demo path, and deliverables that clearly match the judging rubric.

```text
Hackathon brief
  -> idea generation / idea improvement
  -> rubric scoring
  -> MVP scope
  -> technical architecture
  -> frontend / backend / AI build plan
  -> demo, poster, pitch
  -> GitHub-ready package
```

## Why Use It?

- You have a hackathon brief but no strong idea yet.
- You already have an idea, but it feels too broad, too generic, or hard to demo.
- You only have 24 hours, 12 hours, or even less, and need brutal scope control.
- You need a technical document, architecture explanation, poster copy, demo script, and judge Q&A.
- You want Codex to continue from planning into frontend, backend, AI workflow, sample data, README, and deployment work.

## Core Modes

| Mode | Purpose | Typical Output |
|---|---|---|
| `ideate` | Generate ideas from the brief, timeline, team, and audience | 6-10 ideas with user moments, AI value, risks, and demo paths |
| `improve` | Strengthen an existing idea | Repositioning, MVP flow, cut list, fallback plan |
| `score` | Compare ideas against the official or default rubric | Score table, weighted totals, recommended direction |
| `tech-doc` | Produce the technical document | Architecture, modules, AI workflow, data, security, deployment |
| `build-plan` | Convert the MVP into engineering work | Frontend, backend, AI, data, testing, and delivery tasks |
| `demo-poster` | Prepare public-facing demo and poster materials | Demo route, fallback path, poster headline, three-step story |
| `pitch` | Prepare the roadshow | 20-second hook, 3-minute script, judge Q&A |
| `full-sprint` | Run the whole workflow | Brief extraction to GitHub-ready delivery package |

## Quick Install

Clone this repository, then run from the repository root:

```powershell
.\scripts\install.ps1
```

The script copies the skill to:

```text
%USERPROFILE%\.codex\skills\hackathon-builder
```

If the skill already exists locally, overwrite it with:

```powershell
.\scripts\install.ps1 -Force
```

Validate the repository and skill structure:

```powershell
.\scripts\validate.ps1
```

Expected result:

```text
Skill is valid!
All required hackathon-builder files are present.
```

## Usage Examples

After installation, invoke the skill in Codex:

```text
Use $hackathon-builder in full-sprint mode.
Here is the hackathon requirement document. We have 24 hours, two frontend developers,
one Python/AI teammate, and no fixed idea yet.
```

```text
Use $hackathon-builder to generate 8 project ideas from this brief.
We have 2 days left, the team is good at React and Python, and the required deliverables are code, poster, technical document, and a 3-minute pitch.
```

```text
Use $hackathon-builder to improve this idea for a 1-day hackathon.
Then produce an MVP scope, technical document, demo script, and poster copy.
```

```text
Use $hackathon-builder in build-plan mode.
The chosen stack is Vue + FastAPI. Turn this MVP brief into frontend, backend, AI workflow, data, testing, and deployment tasks.
```

```text
Use $hackathon-builder in pitch mode.
Generate a 20-second hook, 3-minute roadshow script, and judge Q&A from our technical document.
```

## Tech Stack Philosophy

This skill does **not** force a default stack.

It recommends or asks based on:

- the team's strongest tools;
- remaining time;
- whether the demo needs a backend, database, or live AI API;
- whether the final experience is local, web-hosted, or mobile-first;
- whether the rubric rewards experience completeness, technical depth, innovation, or user value.

If a stack is already chosen, the skill follows it. If not, it recommends the lowest-risk stack that still supports the desired demo and explains the tradeoff.

## What's Inside

```text
skills/hackathon-builder/
  SKILL.md                         # Main skill instructions
  agents/openai.yaml               # Codex UI metadata
  references/                      # Focused workflow playbooks
  assets/templates/                # Reusable deliverable templates
  scripts/rank_ideas.py            # Idea scoring helper
scripts/
  install.ps1                      # Local install script
  validate.ps1                     # Structure validation script
```

### References

- `requirement-rubric.md`: Extract contest requirements and judging criteria.
- `sprint-playbook.md`: Turn remaining hours or days into a realistic sprint.
- `ideation-score.md`: Generate, improve, and score ideas.
- `technical-doc-build.md`: Produce architecture, technical docs, and build plans.
- `demo-poster-pitch.md`: Prepare demo, poster, booth script, roadshow, and Q&A.
- `github-packaging.md`: Make the project repository ready to submit or push.

### Templates

- idea scorecard
- PRD / MVP brief
- technical document
- architecture notes
- demo script
- poster brief
- roadshow script and judge Q&A
- app starter guidance

## Idea Ranking Helper

`rank_ideas.py` converts JSON idea scores into a Markdown ranking table:

```powershell
python .\skills\hackathon-builder\scripts\rank_ideas.py .\ideas.json
```

Example input:

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

## Design Principles

- Build one complete, repeatable demo route before adding optional features.
- Make the product value obvious before the second click.
- Let the judging rubric drive feature priority.
- Prepare mock or sample fallbacks for every live AI/API dependency.
- Freeze features before the final stretch; spend the last window on stability, docs, poster, and pitch.

## Publish Your Own Copy

If you fork or copy this project:

```powershell
git init
git add .
git commit -m "Create hackathon builder skill"
git remote add origin <your-repo-url>
git push -u origin main
```

## Project Status

The current version includes an installable Codex Skill, complete templates, focused playbooks, validation scripts, and a scoring helper. Future improvements could add more real hackathon case studies, cross-platform install scripts, and deeper starter templates for common tech stacks.

---

# 中文说明

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

## 设计原则

- 先保证一个完整、可重复演示的主路径。
- 让评委在第二次点击前理解产品价值。
- 用评分标准反推功能优先级，而不是堆功能。
- 给所有 live AI/API 能力准备 mock 或 sample fallback。
- 最后阶段停止加功能，把时间留给稳定性、文档、海报和路演。
