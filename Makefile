.PHONY: build
build:
	echo "installing dependencies..."
	chmod +x setup.bash && ./setup.bash

.PHONY: clean
clean:
	echo "Running the cleanup script..."
	chmod +x cleanup.bash && ./cleanup.bash