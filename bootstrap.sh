#!/usr/bin/env sh

set -eux

python3 -m venv .venv

source .venv/bin/activate
pip install -r requirements.txt

NB_PYTHON_PREFIX=".venv"
mkdir -p "${NB_PYTHON_PREFIX}/share/jupyter/lab/settings"
cp configs/overrides.json "${NB_PYTHON_PREFIX}/share/jupyter/lab/settings"

jupyter lab
