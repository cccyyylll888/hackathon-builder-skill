<div align="center">

# Hackathon Builder Skill

Turn hackathon requirements, limited time, team skills, and a rough idea into a buildable MVP, technical documentation, demo plan, poster copy, pitch script, and GitHub-ready delivery package.

[![Codex Skill](https://img.shields.io/badge/Codex-Skill-111827?style=flat-square)](./skills/hackathon-builder/SKILL.md)
[![Language](https://img.shields.io/badge/Language-English-blue?style=flat-square)](./README.md)
[![Status](https://img.shields.io/badge/Status-Ready%20to%20Install-brightgreen?style=flat-square)](./scripts/install.ps1)
[![Platform](https://img.shields.io/badge/Platform-Windows%20PowerShell-5391FE?style=flat-square)](./scripts/install.ps1)

**Language:** English | [Simplified Chinese](./README.zh-CN.md)

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
