test:
	@python -m pytest

lint:
	@python -m flake8

develop:
	@python -m pip install -e .[develop]

clean:
	@find . -name '__pycache__' | xargs rm -fr;\
		echo "Clean completed"

help:
	@echo "\
Targets\n\
------------------------------------------------------------------------\n\
 test:		Perform unit testing on the source code\n\
 lint:		Perform quality checks on the source code\n\
 develop:	Installs all requirements and testing requirements\n\
 clean:		Removes built Python Packages and cached byte code\n\
 help:		Displays the help menu with all the targets\n";

.DEFAULT_GOAL := help
.PHONY: test lint develop clean help
