# Sprint Playbook

Use this reference to convert remaining days or hours into a realistic build plan.

## Time Bands

### 0-6 Hours Left

- Do not add new core features.
- Build or polish one deterministic demo path.
- Use mocked outputs, screenshots, or preloaded sample data if live APIs are risky.
- Produce minimum required docs and pitch script.
- Verify setup commands, demo URL, and fallback route.

### 6-24 Hours Left

- Choose one user scenario and one end-to-end path.
- Build the smallest frontend that makes the product visible.
- Keep backend/API thin; prefer local JSON or simple storage unless persistence is required.
- Freeze feature scope at the halfway point.
- Spend the final quarter on reliability, design polish, documentation, poster, and rehearsal.

### 1-3 Days Left

- Build core loop first, then add one differentiator.
- Use lightweight test coverage around data transformation, API calls, and failure states.
- Prepare demo data early.
- Rehearse after every major milestone.

### More Than 3 Days Left

- Validate the idea with mockups or a fake-door demo before heavy coding.
- Add instrumentation, better onboarding, and one polished extension only after the core flow works.
- Still preserve a one-day fallback plan.

## Scope Rules

- Must-have: one user, one pain, one input, one AI/action output, one visible payoff, one demo route.
- Should-have: failure fallback, loading/error states, sample data, clear README, short technical document.
- Nice-to-have: personalization, accounts, analytics, complex database, native app packaging, advanced admin tools.
- Cut first: login, payment, full social graph, production recommender, large multi-page dashboard, features requiring unapproved external data.

## Sprint Output Format

```markdown
## Time-Boxed Build Plan
- Remaining time:
- Feature freeze:
- Demo freeze:
- Must-build:
- Cut list:
- Fallbacks:

| Time Block | Owner | Work | Acceptance |
|---|---|---|---|
```
