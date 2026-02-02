# /fix-tests

## Purpose

Run the test suite, fix failures, and rerun until passing.

## Steps

1. Detect the test framework (npm test / pytest / manage.py test).
2. Run the appropriate command.
3. If failures occur, identify root cause.
4. Apply minimal fixes and rerun tests.
5. Report commands and results.

## Restrictions

- Do not refactor unrelated code.
- Do not claim success without test output.
