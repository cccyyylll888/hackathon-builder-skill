# Hackathon Builder Skill

`hackathon-builder` is a Codex skill for turning hackathon requirements, remaining time, team skills, and an optional idea into a practical MVP plan, technical document, demo, poster, pitch script, and GitHub-ready delivery checklist.

The skill is generic for hackathons. It is Chinese-first by default, but keeps technical terms in English when that is clearer.

## Repository Layout

```text
skills/hackathon-builder/
  SKILL.md
  agents/openai.yaml
  references/
  assets/templates/
  scripts/rank_ideas.py
scripts/
  install.ps1
  validate.ps1
```

## Install Locally

From this repository root:

```powershell
.\scripts\install.ps1
```

This copies the skill to:

```text
C:\Users\24033\.codex\skills\hackathon-builder
```

If that destination already exists, run:

```powershell
.\scripts\install.ps1 -Force
```

## Validate

```powershell
.\scripts\validate.ps1
```

The validation script runs Codex skill validation and checks required references/templates.

## Usage Examples

```text
Use $hackathon-builder in full-sprint mode. Here is the requirement doc, we have 24 hours, two frontend developers, one Python/AI teammate, and no fixed idea yet.
```

```text
Use $hackathon-builder to improve this idea for a 1-day hackathon, then generate the technical document and demo script.
```

```text
Use $hackathon-builder in pitch mode. Generate a 3-minute roadshow script and judge Q&A from our MVP brief.
```

## Supported Modes

- `ideate`: generate ideas from requirements, timeline, team, and audience.
- `improve`: sharpen an existing idea into a scoped MVP.
- `score`: compare ideas against an official or default rubric.
- `tech-doc`: generate the technical document.
- `build-plan`: produce frontend/backend/AI/data implementation tasks.
- `demo-poster`: prepare demo flow, poster copy, and booth script.
- `pitch`: write roadshow script and judge Q&A.
- `full-sprint`: run the end-to-end workflow.

## GitHub Push

When you are ready to publish:

```powershell
git init
git add .
git commit -m "Create hackathon builder skill"
git remote add origin <repo-url>
git push -u origin main
```
