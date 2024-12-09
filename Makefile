LINUX_SCRIPT=./bin/linux.sh
CLEANUP_SCRIPT=./bin/cleanup.sh

all: linux

linux: clean
	@echo "Setting up environment..."
	bash $(LINUX_SCRIPT)

clean:
	@echo "Cleaning up environment..."
	bash $(CLEANUP_SCRIPT)
