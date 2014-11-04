PIPSI := ${HOME}/.local/bin/pipsi
PACKAGE := aws-ops
PIPSIURL:=https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py
PYTHON := $(shell which python2 2>/dev/null || which python 2>/dev/null)
VENV := $(shell which virtualenv2 2>/dev/null || which virtualenv 2>/dev/null)

all: ensure-venv-exists pipsi install

install: ensure-venv-exists
	${PIPSI} install $(PACKAGE)

pipsi:
ifdef PYTHON
	curl ${PIPSIURL} | ${PYTHON}
else
	$(error Python not installed.)
endif

ensure-venv-exists:
ifndef VENV
	$(error virtualenv is not installed.)
else
	@$(VENV) -q . >/dev/null
endif
