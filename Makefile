PREFIX = ~/.local/

all:
	@echo "do 'export VERSION=<version>' to select the version"
	@echo "selected version: $$VERSION"

zipall:
	@make ziptar
	@make zipdeb
	@make ziprpm

ziptar:
	@-rm output/*.tar
	@-mkdir output

	@echo "Making source tarballs..."
	@tar cvf output/pokeget_$$VERSION-src.tar Makefile pokeget 
	@tar cvf output/pokeget-lite_$$VERSION-src.tar Makefile pokeget

zipdeb:
	@-rm output/*.deb
	@-mkdir output

	@echo "Making .deb package..."

	@rm -rf output/pokeget_$$VERSION
	@mkdir output/pokeget_$$VERSION

	@echo "Copying over script..."

	@mkdir -p output/pokeget_$$VERSION/usr/bin
	@cp pokeget output/pokeget_$$VERSION/usr/bin

	@echo "Generating metadata..."
	
	@mkdir -p output/pokeget_$$VERSION/DEBIAN
	@./metadata/control > output/pokeget_$$VERSION/DEBIAN/control
	@cp metadata/postinst output/pokeget_$$VERSION/DEBIAN/postinst

	@echo "Building final .deb file..."

	@chmod 775 output/pokeget_$$VERSION/DEBIAN/postinst
	@dpkg-deb --build --root-owner-group output/pokeget_$$VERSION

	@echo "Cleaning up..."

	@rm -rf output/pokeget_$$VERSION

ziprpm:
	@-rm output/*.rpm
	@-rm -rf $$HOME/rpmbuild
	@-mkdir output

	@echo "Making .rpm package..."

	@echo "Setting up initial tree..."

	@rpmdev-setuptree

	@echo "Making .tar archive..."

	@mkdir pokeget-$$VERSION
	@cp pokeget pokeget-$$VERSION
	@tar cvf $$HOME/rpmbuild/SOURCES/pokeget-$$VERSION.tar pokeget-$$VERSION
	@rm -rf pokeget-$$VERSION

	@echo "Generating metadata..."

	@./metadata/spec > $$HOME/rpmbuild/SPECS/pokeget.spec

	@echo "Building final .rpm file..."

	@rpmbuild -bb $$HOME/rpmbuild/SPECS/pokeget.spec
	@mv $$HOME/rpmbuild/RPMS/noarch/pokeget-$$VERSION-1.noarch.rpm output/pokeget_$$VERSION.rpm

	@echo "Cleaning up..."

	@rm -rf $$HOME/rpmbuild

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p pokeget $(PREFIX)/bin/pokeget
	@chmod +x $(PREFIX)/bin/pokeget

uninstall:
	@rm -rf $(PREFIX)/bin/pokeget

clean:
	@-rm -rf output
	@-rm -rf $$HOME/rpmbuild

pathadd:
	@export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.profile
	@test -f ~/.bashrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc
	@test -f ~/.zshrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.zshrc

getpokedex:
	@./scripts/get_pokedex.sh