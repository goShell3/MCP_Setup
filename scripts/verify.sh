#!/usr/bin/env bash
set -euo pipefail

if [ -f package.json ]; then
  npm test
  exit 0
fi

if [ -f manage.py ]; then
  python manage.py test
  exit 0
fi

if [ -f pytest.ini ] || [ -f pyproject.toml ] || [ -f setup.cfg ]; then
  python -m pytest
  exit 0
fi

echo "No supported test framework detected. Add tests and update scripts/verify.sh."
exit 1
