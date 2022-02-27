PREFIX = ~/.local/

all:
	@echo Run \'make install\' to install pokeget.

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p pokeget $(PREFIX)/bin/pokeget
	@chmod +x $(PREFIX)/bin/pokeget

uninstall:
	@rm -rf $(PREFIX)/bin/pokeget

pathadd:
	@echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc