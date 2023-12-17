.PHONY: build
build:
	echo "installing dependencies..."
	chmod +x setup.bash && ./setup.bash
	chmod +x grabtext.py

.PHONY: dry-run
dry-run:
	chmod +x dry-run.bash && ./dry-run.bash

.PHONY: clean
clean:
	echo "Running the cleanup script..."
	chmod +x cleanup.bash && ./cleanup.bash