#!/usr/bin/env bash

# ##############################################################################
# DEV ONLY -  pip installs (not required because they're personal preference)

python -m pip install -U tensorboard
python -m pip install -U pynvim
python -m pip install -U 'python-lsp-server[all]'
python -m pip install -U pre-commit pre-commit-hooks
python -m pip install -U autopep8 flake8 isort pylint yapf pydocstyle black
python -m pip install -U jupyter jupyter_nbextensions_configurator
python -m pip install -U jupyter ipyparallel jupyterlab_code_formatter

python -m pip install -U jupyterlab
python -m pip install -U jupyterlab_code_formatter
python -m pip install -U jupyterlab-drawio
python -m pip install -U jupyterlab-lsp
python -m pip install -U jupyterlab-spellchecker
python -m pip install -U jupyterlab-git
python -m pip install -U aquirdturtle-collapsible-headings
python -m pip install -U nbdime

python -m pip install -U jupyterlab-git

jupyter labextension install jupyterlab_onedarkpro
jupyter server extension enable --py jupyterlab_git
jupyter serverextension enable --py jupyterlab_code_formatter

pre-commit install
