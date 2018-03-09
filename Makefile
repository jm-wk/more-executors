default: help


help:
	@echo Try one of the following:
	@echo
	@echo "   make check - run all autotests"
	@echo "   make cov   - run tests and open coverage report"
	@echo "   make debug - run tests with configuration appropriate for debugging"

check:
	@tox

cov:
	@tox -e cov
	@xdg-open htmlcov/index.html

debug:
	env PYTHONPATH=$$PWD py.test -v --log-cli-level=DEBUG -o log_cli=true
