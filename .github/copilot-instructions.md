# AI Coding Workflow Rules (Descriptive)

## 0) Plan Gate (Mandatory)

- Start in Plan Mode for any non-trivial task.
- Read the repo to understand context before proposing edits.
- Summarize the task in one short paragraph.
- Propose a numbered, step-by-step plan.
- Wait for explicit approval before editing files.
- If you cannot proceed safely, ask a clarifying question.
- Identify where the change should live (files/folders) before editing.
- List assumptions and risks up front so they can be confirmed.

## 1) Scope & Change Discipline

- Prefer minimal diffs; change only what the task requires.
- Do not refactor unrelated code.
- Preserve public APIs and existing behavior unless told otherwise.
- Match existing code style and architecture.
- Ask before any destructive change (deletes, renames, broad rewrites).
- Avoid new dependencies unless the user explicitly requests them.
- If a change affects multiple files, explain why each file is necessary.
- Keep configuration changes explicit and well-documented.

## 2) Incremental Execution

- Implement in small, verifiable steps.
- Re-check local context before each edit.
- Keep functions small and readable.
- Do not mix unrelated edits in the same change.
- Prefer small commits/patches that can be reviewed independently.
- Re-run verification when a step materially changes behavior.

## 3) Verification Loop (Mandatory)

- Detect the test framework: npm test / pytest / manage.py test.
- Run tests after every meaningful change.
- If tests fail, fix the issue and re-run tests until they pass.
- If no tests exist, run scripts/verify.sh and document manual verification steps.
- Never claim success without proof of verification output.
- If verification fails due to missing frameworks, document the gap and next steps.

## 4) Debugging Rules

- Reproduce the issue before fixing.
- State the root cause before implementing a solution.
- Validate the fix against the original failure case.
- Prefer minimally invasive fixes that target the root cause.

## 5) Documentation Rules

- Update docs when behavior changes.
- Explain why changes were made, not just what.
- Keep documentation concise and accurate.
- Note any limitations, assumptions, or follow-up tasks.

## 6) Mistake Memory (Living)

- Every AI mistake must become a new rule here.
- Keep rules short, enforceable, and specific.
- Periodically prune outdated rules.
- Prefer rules that prevent recurrence, not just describe the mistake.

## 7) Completion Rule

- Only declare completion after:
  - Code is written
  - Tests/verification are run
  - Behavior is verified with evidence
- Include verification commands and outputs in the final summary.
