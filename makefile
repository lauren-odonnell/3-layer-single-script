default:
	@cat makefile

view: clean init
	python db_viewer.py

init:
	python initialize_database.py

test:
	pytest -vvx db_viewer.py

clean:
	rm aquarium.py

clean_view: clean init view

test_smoke:
	
