# AI Coding Workflow Rules (Boris Cherny–Inspired)

## Plan Mode (Mandatory)
- Analyze the repo before coding.
- Summarize task understanding.
- Propose a step-by-step plan.
- Wait for approval before making changes.
- Work incrementally and verify each step.

## Change Discipline
- Prefer minimal diffs.
- Do not refactor unrelated code.
- Match existing architecture and style.
- Ask before any destructive change.

## Verification Loop (Mandatory)
- Detect the test framework (npm test / pytest / manage.py test).
- Run tests after every meaningful change.
- If tests fail, fix and rerun until they pass.
- If no tests exist, run scripts/verify.sh and document manual verification.
- Never claim success without proof of verification.

## Debugging Rules
- Reproduce the issue before fixing.
- Explain root cause before implementing solution.
- Validate fix against the original failure case.

## Documentation Rules
- Update docs when behavior changes.
- Explain why changes were made, not just what.

## Mistake Memory (Living)
- Every AI mistake must become a new rule here.
- Keep rules short, enforceable, and specific.
- Periodically prune outdated rules.

## Completion Rule
- Only declare completion after:
  - Code is written
  - Tests/verification are run
  - Behavior is verified with evidence
