install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_main.py

format:
	black *.py

run:
	uvicorn main:app --host 0.0.0.0 --port 8080 --reload

run-uvicorn:
	uvicorn main:app --reload

killweb:
	sudo killall uvicorn

lint:
	pylint --disable=R,C main.py

all: install lint
