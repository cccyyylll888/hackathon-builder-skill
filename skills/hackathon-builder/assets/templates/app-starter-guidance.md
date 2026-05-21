# App Starter Guidance

Use this as guidance when the user asks the skill to develop frontend/backend code. Do not force one stack; choose or ask based on constraints.

## Stack Decision Matrix

| Constraint | Good Fit | Watch Out |
|---|---|---|
| Fast web demo, small team | Full-stack web framework | Avoid overbuilding auth/db |
| Strong frontend team | React/Vue/Svelte + simple API | Keep API contracts tiny |
| Strong Python/AI team | Python API + lightweight web UI | Polish frontend early |
| No backend required | Static app + local JSON/mock API | Explain mock limits clearly |
| Needs persistence | SQLite/Postgres + minimal ORM | Seed demo data |
| Needs live AI | Server-side API wrapper | Add mock mode and timeouts |

## Generated Project Expectations

- Include setup and run commands.
- Include `.env.example` for secrets.
- Include mock/demo data.
- Include one polished route before optional features.
- Include failure states for API/model errors.
- Include README sections for demo and architecture.

## Common Task Split

```markdown
Frontend:
- Build main route and demo states.
- Add responsive layout and loading/error states.

Backend/API:
- Implement smallest required endpoints.
- Validate input and return stable error messages.

AI:
- Define input/output schema.
- Add live call wrapper and mock mode.

Delivery:
- Add README, sample data, and final smoke test.
```
