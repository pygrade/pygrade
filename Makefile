create-venv:
	python3 -m venv .venv

install-libraries: .venv
	./.venv/bin/pip install setuptools wheel build bump2version

build:
	./.venv/bin/python -m build .

clean:
	rm -rf build dist pygradus.egg-info
