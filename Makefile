install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt # 

format:
	black *.py                          # formato de codigo
	
lint:
	pylint --disable=R,C hello.py       # disable warnings
	
test:
	python -m pytest -vv -cov=hello test_hello.py # hacer la prueba
	
all: install lint test