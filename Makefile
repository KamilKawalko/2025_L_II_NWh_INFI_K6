# Poprawny Makefile z tabulatorami przed komendami

.PHONY: deps lint test run

# Instalowanie zależności
deps:
	pip install -r requirements.txt;
	pip install -r test_requirements.txt;

# Sprawdzanie jakości kodu
lint:
	flake8 hello_world test;

# Uruchamianie testów
test:
	pytest tests;

# Uruchamianie aplikacji
run:
	python main.py;
