# Requirement And Rubric Extraction

Use this reference when a hackathon requirement document, prompt, PDF text, website brief, or rules page drives the project.

## Extract First

Capture these facts before proposing ideas:

- Hackathon name, theme, tracks, target participants, and intended audience.
- Required deliverables: code, demo, technical doc, poster, video, slides, pitch, repo URL, deployment URL.
- Deadlines and milestones, including mentor time, submission time, live demo time, and judging time.
- Scoring rubric with weights. Preserve official wording when short; otherwise paraphrase.
- Technical constraints: allowed models/APIs, forbidden services, data rules, device/network constraints, deployment rules.
- Team constraints: team size, known stack, AI/API experience, design ability, available hardware.

## Convert Requirements Into A Product Brief

Return a compact brief:

```markdown
## Hackathon Brief
- Theme:
- Track:
- Audience:
- Required deliverables:
- Timeline:
- Rubric:
- Technical constraints:
- Team constraints:
- Biggest scoring opportunity:
- Biggest delivery risk:
```

## Rubric Mapping

For each idea or MVP feature, map it to rubric language:

- `Insight`: What real user moment or problem does it reveal?
- `Technical/AI`: What capability is actually doing useful work?
- `Experience`: Can a judge complete the flow without explanation?
- `Value`: What changes for the user after using it?
- `Innovation`: What is fresh beyond a standard chatbot/dashboard?
- `Feasibility`: Can it be built and rehearsed before submission?

If the official rubric has weights, compute weighted scores. If it does not, use equal weights and say so.

## Missing Information Policy

Ask only for details that materially change the plan. If missing details are manageable, proceed with explicit assumptions:

- If timeline is missing, assume 24 hours left for planning.
- If team skills are missing, assume beginner-to-intermediate web development.
- If stack is missing, recommend options instead of locking one in.
- If deployment is missing, target local demo first and optional cloud deployment second.
