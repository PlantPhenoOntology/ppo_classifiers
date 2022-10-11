#!/usr/bin/env bash

# #################################################################################
# Setup the virtual environment for development.
# You may need to "pip install --user virtualenv" globally.
# This is not required but some form of project isolation (conda virtual env etc.)
# is strongly encouraged.

if [[ -n "$VIRTUAL_ENV" ]]; then
  echo "'deactivate' before running this script."
  exit 1
fi

rm -rf .venv
python3.10 -m venv .venv
source ./.venv/bin/activate

python -m pip install --upgrade pip setuptools wheel
if [ -f requirements.txt ]; then pip install -r requirements.txt; fi


# ###############################################################################
# Setup pytorch (Uncomment the one that works for your computer. GPU is better.)

pip3 install -U torch torchvision --extra-index-url https://download.pytorch.org/whl/cu113
# pip3 install -U torch torchvision --extra-index-url https://download.pytorch.org/whl/cpu
