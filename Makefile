install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt # 

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt # 

format:
	black *.py                          # formato de codigo
	
lint:
	pylint --disable=R,C hello.py       # disable warnings
	
test:
	python -m pytest -vv -cov=hello test_hello.py # hacer la prueba
	
all: install lint test