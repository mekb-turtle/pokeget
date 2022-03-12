PREFIX = ~/.local

all:
	@echo "do 'export VERSION=<version>' to select the version"
	@echo "selected version: $$VERSION"

zipall:
	@make ziptar
	@make zipdeb
	@make ziprpm
	@make zipbrew
	@make zipglac
	@echo "Zipped All!"

zipbrew:
	@-rm -v output/pokeget.rb
	@-mkdir -v output
	
	@echo "Generating homebrew formula..."
	@./metadata/pokeget.rb.sh > output/pokeget.rb

	@echo "Copying pokeget.rb to formula directory..."
	@cp output/pokeget.rb Formula/pokeget.rb

ziptar:
	@-rm -v output/*.tar
	@-mkdir -v output

	@echo "Making source tarballs..."
	@tar cvf output/pokeget_$$VERSION-src.tar Makefile pokeget 
	@tar cvf output/pokeget-lite_$$VERSION-src.tar Makefile pokeget

zipdeb:
	@-rm -v output/*.deb
	@-mkdir -v output

	@echo "Making .deb package..."

	@rm -v -rf output/pokeget_$$VERSION
	@mkdir -v output/pokeget_$$VERSION

	@echo "Copying over script..."

	@mkdir -v -p output/pokeget_$$VERSION/usr/bin
	@cp -v pokeget output/pokeget_$$VERSION/usr/bin

	@echo "Generating metadata..."
	
	@mkdir -v -p output/pokeget_$$VERSION/DEBIAN
	@./metadata/control.sh > output/pokeget_$$VERSION/DEBIAN/control
	@cp -v metadata/postinst.sh output/pokeget_$$VERSION/DEBIAN/postinst

	@echo "Building final .deb file..."

	@chmod -v 775 output/pokeget_$$VERSION/DEBIAN/postinst
	@dpkg-deb -v --build --root-owner-group output/pokeget_$$VERSION

	@echo "Cleaning up..."

	@rm -v -rf output/pokeget_$$VERSION

ziprpm:
	@-rm -v output/*.rpm
	@-rm -v -rf $$HOME/rpmbuild
	@-mkdir -v output

	@echo "Making .rpm package..."

	@echo "Setting up initial tree..."

	@rpmdev-setuptree

	@echo "Making .tar archive..."

	@mkdir -v pokeget-$$VERSION
	@cp -v pokeget pokeget-$$VERSION
	@tar cvf $$HOME/rpmbuild/SOURCES/pokeget-$$VERSION.tar pokeget-$$VERSION
	@rm -v -rf pokeget-$$VERSION

	@echo "Generating metadata..."

	@./metadata/spec.sh > $$HOME/rpmbuild/SPECS/pokeget.spec

	@echo "Building final .rpm file..."

	@rpmbuild -bb $$HOME/rpmbuild/SPECS/pokeget.spec
	@mv $$HOME/rpmbuild/RPMS/noarch/pokeget-$$VERSION-1.noarch.rpm output/pokeget_$$VERSION.rpm

	@echo "Building .src.rpm file..."

	@rpmbuild -bs $$HOME/rpmbuild/SPECS/pokeget.spec
	@mv $$HOME/rpmbuild/SRPMS/pokeget-$$VERSION-1.src.rpm other/pokeget.src.rpm
	@cp $$HOME/rpmbuild/SPECS/pokeget.spec other/pokeget.spec

	@echo "Cleaning up..."

	@rm -v -rf $$HOME/rpmbuild

zipglac:
	@-rm -v output/*.tar.gz
	@-rm -v -rf output/pokeget-glactmp
	@-mkdir -v output

	@echo "Generating metadata..."
	
	@mkdir -v output/pokeget-glactmp
	@./metadata/pokeget-pkginfo.json.sh > output/pokeget-glactmp/pokeget-pkginfo.json

	@echo "Generating LICENSE"

	@printf "# " > output/pokeget-glactmp/LICENSE.md 
	@cat LICENSE >> output/pokeget-glactmp/LICENSE.md

	@echo "Generating needed scripts..."
	
	@printf '#!/bin/sh\n\nmake install PREFIX="/usr"' > output/pokeget-glactmp/INSTALL.sh
	@printf '#!/bin/sh\n\nmake uninstall PREFIX="/usr"' > output/pokeget-glactmp/REMOVE.sh
	@printf '#!/bin/sh\n\nmake uninstall PREFIX="/usr"\nmake install PREFIX="/usr"' > output/pokeget-glactmp/UPDATE.sh


	@echo "Making final glacier tar.gz file..."

	@tar vczf output/pokeget.tar.gz pokeget Makefile -C output/pokeget-glactmp/ .

	@echo "Cleaning up..."

	@-rm -v -rf output/pokeget-glactmp

install:
	@mkdir -p $(PREFIX)/bin
	@cp -p pokeget $(PREFIX)/bin/pokeget
	@chmod +x $(PREFIX)/bin/pokeget

uninstall:
	@rm -rf $(PREFIX)/bin/pokeget

clean:
	@-rm -v -rf output
	@-rm -v -rf $$HOME/rpmbuild

pathadd:
	@echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.profile
	@test -f ~/.bashrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.bashrc
	@test -f ~/.zshrc && echo 'export PATH="$$HOME/.local/bin:$$PATH"' >> ~/.zshrc

getpokedex:
	@./scripts/get_pokedex.sh

getchecksum:
	@curl -s https://github.com/talwat/pokeget/releases/download/$$VERSION/pokeget_$$VERSION-src.tar --output /tmp/pokeget-tarball-tmp.tar
	@sha256sum /tmp/pokeget-tarball-tmp.tar

gitrestore:
	@git restore Formula
	@git restore other