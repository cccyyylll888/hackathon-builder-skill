# Technical Documentation And Build Guidance

Use this reference for technical documents, architecture, stack choice, and implementation planning.

## Stack Choice

If the user supplies a stack, use it. If not, recommend 2-3 options with tradeoffs:

- Short timeline and web-first demo: full-stack web framework or lightweight frontend plus API routes.
- Strong Python/AI team: Python backend with a simple web frontend.
- Data-heavy prototype: backend with SQLite/Postgres and seeded demo data.
- Mobile-first demo: responsive web unless native device capabilities are essential.
- No backend needed: static frontend with mocked JSON and optional serverless API.

Ask before choosing only when the difference changes the build plan materially. Otherwise choose the lowest-risk option and state why.

## Architecture Story

A hackathon architecture should be explainable in 30 seconds:

```text
User input -> frontend state -> API/AI workflow -> data/fallback layer -> result UI -> demo logging/export
```

Highlight:

- What the user sees.
- What the AI/model/service does.
- What data is stored or mocked.
- How failures are handled.
- What could scale after the hackathon.

## Technical Document Sections

Use `assets/templates/technical-document.md` and include:

- Problem and target users.
- Requirement/rubric fit.
- Product flow.
- Architecture diagram or textual architecture.
- Frontend modules.
- Backend/API modules.
- AI/model prompts, tools, or inference flow.
- Data model and sample data.
- Security, privacy, and safety notes.
- Deployment and setup.
- Limitations and future work.

## Build Plan Sections

For implementation tasks, split into:

- Frontend: screens, components, states, responsiveness, visual polish.
- Backend/API: endpoints, validation, service wrappers, persistence.
- AI: prompt/input schema, model calls, retries, mock mode, evaluation examples.
- Data: seed data, local storage, database schema, fixtures.
- Demo: scripted route, reset button, sample accounts, fallback outputs.
- Testing: smoke tests, API tests, UI path checks, failure states.
- Delivery: README, `.env.example`, deployment notes, repo cleanup.

## Acceptance Criteria

Every coding task should have a visible acceptance check:

- User can complete the main route from fresh start.
- Required API returns deterministic sample output in mock mode.
- Failure state is readable and does not break the demo.
- README setup works on a clean machine.
- Demo flow can be completed within the pitch time.
