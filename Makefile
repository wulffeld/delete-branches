SCRIPT_DIR := $(shell pwd)
SCRIPT := $(SCRIPT_DIR)/delete_branch.rb
SYMLINK := /usr/local/bin/delete_branch

.PHONY: install uninstall

install: $(SCRIPT)
	@echo "Setting executable permissions on $(SCRIPT)..."
	chmod +x $(SCRIPT)
	@echo "Installing symlink to $(SYMLINK)..."
	sudo ln -sf $(SCRIPT) $(SYMLINK)
	@echo "Symlink installed successfully!"

uninstall:
	@echo "Removing symlink $(SYMLINK)..."
	sudo rm -f $(SYMLINK)
	@echo "Symlink removed successfully!"
