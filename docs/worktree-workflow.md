# Git Worktree Workflow (Coder/Tester/Reviewer)

## Preconditions

- Verify the repo is initialized and has commits.
- Identify the base branch (usually main or master).

## Branch Naming Rules

- feature/<ticket>-<role>
- fix/<ticket>-<role>
- chore/<ticket>-<role>

Examples:

- feature/1234-coder
- fix/5678-tester
- chore/ops-reviewer

## Create Worktrees (Do Not Run Here)

- Coder worktree:
  - git worktree add ../repo-coder -b feature/<ticket>-coder <base-branch>
- Tester worktree:
  - git worktree add ../repo-tester -b fix/<ticket>-tester <base-branch>
- Reviewer worktree:
  - git worktree add ../repo-reviewer -b chore/<ticket>-reviewer <base-branch>

## VS Code Multi-Window Workflow

- Open each worktree in its own VS Code window.
- Keep the tester window dedicated to running tests only.
- Keep the reviewer window read-only for code review.
- Use the coder window for implementation work.

## Cleanup (Do Not Run Here)

- git worktree remove ../repo-<role>
- git branch -d <branch>
