PREFIX = ~/.local/
VERSION = 1.1

all:
	@echo "pokeget version $(VERSION)"

ziptar:
	@rm -rf output
	@mkdir output

	@echo "Making source tarballs..."
	@tar cvf output/pokeget-src.tar Makefile pokeget 
	@tar cvf output/pokeget-src-lite.tar Makefile pokeget

zipdeb:
	@rm -rf output
	@mkdir output

	@echo "Making .deb packages..."

	@echo "Making pokeget .deb package..."
	@rm -rf output/pokeget_$(VERSION)
	@mkdir output/pokeget_$(VERSION)
	@mkdir -p output/pokeget_$(VERSION)/usr/bin
	@cp pokeget output/pokeget_$(VERSION)/usr/bin

	@mkdir -p output/pokeget_$(VERSION)/DEBIAN
	@cp metadata/control output/pokeget_$(VERSION)/DEBIAN/control

	@cp metadata/postinst output/pokeget_$(VERSION)/DEBIAN/postinst

	@chmod 775 output/pokeget_$(VERSION)/DEBIAN/postinst
	@dpkg-deb --build --root-owner-group output/pokeget_$(VERSION)

	@echo "Making pokeget-lite .deb package..."

	@rm -rf output/pokeget-lite_$(VERSION)
	@mkdir output/pokeget-lite_$(VERSION)
	@mkdir -p output/pokeget-lite_$(VERSION)/usr/bin
	@cp pokeget-lite output/pokeget-lite_$(VERSION)/usr/bin

	@mkdir -p output/pokeget-lite_$(VERSION)/DEBIAN
	@cp metadata/control-lite output/pokeget-lite_$(VERSION)/DEBIAN/control

	@cp metadata/postinst-lite output/pokeget-lite_$(VERSION)/DEBIAN/postinst

	@chmod 775 output/pokeget-lite_$(VERSION)/DEBIAN/postinst
	@dpkg-deb --build --root-owner-group output/pokeget-lite_$(VERSION)

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p pokeget $(PREFIX)/bin/pokeget
	@chmod +x $(PREFIX)/bin/pokeget

uninstall:
	@rm -rf $(PREFIX)/bin/pokeget

clean:
	@rm -rf output

pathadd:
	@export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.profile
	@test -f ~/.bashrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc
	@test -f ~/.zshrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.zshrc

getpokedex:
	@./scripts/get_pokedex.sh