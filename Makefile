intall:
	pip install --upgrade pip && \
	pip install -r requirements.txt

test: 
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web test
	python -m pytest --nbval notebooks/*.ipynb

debug:
	python -m pytest --v --pdb 

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all:
	install lint test format