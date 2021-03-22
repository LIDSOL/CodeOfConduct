#!/usr/bin/make -f
SHELL=/bin/bash

MKDOCS=mkdocs

default:	test
test:	serve

install:
	which ${MKDOCS} || \
	pip3 install --user --requirement requirements.txt

serve:	install
	${MKDOCS} $@ --strict --verbose
