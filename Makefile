PREFIX = ~/.local/
VERSION = 1.0

all:
	@rm -rf output
	@mkdir output

	@echo "Making source tarballs..."
	@tar cvf output/pokeget-src.tar Makefile pokeget 
	@tar cvf output/pokeget-src-lite.tar Makefile pokeget

	@echo "Making .deb package..."
	@rm -rf output/pokeget_$(VERSION)
	@mkdir output/pokeget_$(VERSION)
	@mkdir -p output/pokeget_$(VERSION)/usr/bin
	@cp pokeget output/pokeget_$(VERSION)/usr/bin

	@mkdir -p output/pokeget_$(VERSION)/DEBIAN
	@cp metadata/control output/pokeget_$(VERSION)/DEBIAN

	@cp metadata/postinst output/pokeget_$(VERSION)/DEBIAN

	@chmod -v 775 output/pokeget_$(VERSION)/DEBIAN/postinst
	@dpkg-deb --build --root-owner-group output/pokeget_$(VERSION)

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p pokeget $(PREFIX)/bin/pokeget
	@chmod +x $(PREFIX)/bin/pokeget

uninstall:
	@rm -rf $(PREFIX)/bin/pokeget

pathadd:
	@export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.profile
	@test -f ~/.bashrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc
	@test -f ~/.zshrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.zshrc

getpokedex:
	./scripts/get_pokedex.sh