#!/bin/bash
# undo conda-forge setting CI
CI=1 "${PYTHON}" -m pip install . --no-deps --no-build-isolation -vv
