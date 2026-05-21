---
name: hackathon-builder
description: End-to-end hackathon copilot for generic hackathons. Use when Codex needs to read hackathon requirement documents, account for remaining days or hours, generate or improve project ideas, score ideas against a rubric, plan an MVP, guide frontend/backend implementation, produce technical documentation, prepare demo and poster materials, package a GitHub-ready project, or write roadshow pitch scripts and judge Q&A.
---

# Hackathon Builder

Use this skill to help a team move from hackathon requirements to a shippable MVP and presentation package. Work Chinese-first unless the user requests another language; keep technical names and code terms in English when clearer.

## Fast Workflow

1. **Extract the contest truth**
   - Read the requirement document, prompt, rubric, timeline, submission rules, theme, allowed tools, and demo constraints.
   - If a requirement document is missing, ask for it only when the missing details would change the plan. Otherwise state assumptions and continue.
   - For detailed extraction rules, read `references/requirement-rubric.md`.

2. **Choose the mode**
   - `ideate`: Generate new ideas from requirements, time left, audience, and team skills.
   - `improve`: Sharpen an existing idea into a judge-ready MVP.
   - `score`: Compare ideas against the rubric and timeline.
   - `tech-doc`: Produce the technical document and architecture story.
   - `build-plan`: Turn an idea into implementation tasks for frontend, backend, AI, data, and demo.
   - `demo-poster`: Create demo flow, poster copy, and booth/garden-fair talking points.
   - `pitch`: Write roadshow script, timing plan, and judge Q&A.
   - `full-sprint`: Run the whole sequence from requirements to GitHub-ready package.

3. **Frame the sprint**
   - Ask or infer: remaining time, team skills, available APIs/models, required deliverables, target users, and existing idea/code.
   - Compress scope aggressively as time shrinks. For time-box rules, read `references/sprint-playbook.md`.
   - Prefer one complete, repeatable demo path over many partial features.

4. **Handle tech stack selection**
   - Do not hardcode a default stack. If the user supplies a stack, use it.
   - If no stack is supplied, recommend based on team familiarity, timeline, hosting target, AI/API needs, data persistence, and demo device.
   - If two stacks are both plausible and the choice changes implementation materially, ask a concise question before coding.
   - For stack and build guidance, read `references/technical-doc-build.md` and copy from `assets/templates/app-starter-guidance.md` when useful.

5. **Produce artifacts**
   - Use templates in `assets/templates/` for reusable outputs: idea scorecard, PRD/MVP brief, technical doc, architecture notes, demo script, poster brief, roadshow script, and Q&A.
   - Keep artifact output specific to the current hackathon, not generic advice.
   - For GitHub packaging, read `references/github-packaging.md`.

## Mode Outputs

### ideate

Return 6-10 ideas with target user, exact moment, AI role, interaction, demo path, risk, and why judges or visitors would care. Include at least one practical, one playful, one technically ambitious, and one low-risk idea.

### improve

Diagnose the idea first: unclear user, weak moment, too much scope, thin AI value, hard demo, missing differentiator, or weak rubric fit. Then rewrite positioning, MVP flow, required data/API, demo path, cuts, and fallback plan.

### score

Use the official rubric when available. If no rubric exists, use: insight, feasibility, AI/technical depth, experience completeness, user value, innovation, demo clarity. Penalize ideas that cannot be demonstrated within the remaining timeline.

For structured scoring data, optionally use `scripts/rank_ideas.py` to rank JSON idea scores into a Markdown table.

### tech-doc

Produce a complete technical document with problem, scenario, users, system architecture, AI capability, frontend/backend modules, data flow, security/privacy notes, deployment, limitations, and future work. Use `assets/templates/technical-document.md`.

### build-plan

Convert the MVP into coding tasks. Split by frontend, backend/API, AI integration, data/modeling, demo data, testing, and deployment. Include acceptance criteria for each task. If asked to implement, inspect the repo first and follow existing patterns.

### demo-poster

Create a short demo route, failure fallback, booth script, poster headline, three-step visual story, QR/link placement, and judging hook. Use `references/demo-poster-pitch.md`.

### pitch

Write a 20-second hook, 60-90-second demo narration, 3-minute roadshow script, transition cues, and judge Q&A. Prioritize clarity, visible product value, and what was actually built.

### full-sprint

Run this order: extract requirements -> generate or refine ideas -> score and choose -> scope MVP -> select/recommend stack -> plan implementation -> produce docs -> prepare demo/poster/pitch -> package GitHub repo.

## Decision Rules

- Prefer a narrow idea with a memorable usage moment over a broad platform.
- Build for the demo environment, not for imaginary production scale.
- Every extra feature must strengthen the story, the rubric score, or the live demo.
- Maintain a fallback path: local sample data, mocked AI outputs, static screenshots, or recorded demo clips.
- Freeze features before the final polish window; after freeze, improve reliability, visuals, docs, poster, and pitch.
- When producing code, keep generated projects runnable and documented; include `.env.example`, setup commands, and demo data when needed.

## Resource Map

- `references/requirement-rubric.md`: requirement extraction and rubric mapping.
- `references/sprint-playbook.md`: day/hour-based planning and scope cuts.
- `references/ideation-score.md`: idea generation, improvement, and scoring.
- `references/technical-doc-build.md`: technical doc, stack selection, architecture, and implementation planning.
- `references/demo-poster-pitch.md`: demo, poster, booth, and pitch guidance.
- `references/github-packaging.md`: repo readiness, README, validation, and push checklist.
- `assets/templates/`: reusable Markdown templates for deliverables.
