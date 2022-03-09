# Installing

## Table of contents

- [Installing](#installing)
  - [Table of contents](#table-of-contents)
  - [Arch linux & Arch linux derivatives *Manjaro, EndeavorOS, etc...*](#arch-linux--arch-linux-derivatives-manjaro-endeavoros-etc)
  - [Debian & Debian derivatives *Ubuntu, Linux mint, etc...*](#debian--debian-derivatives-ubuntu-linux-mint-etc)
  - [Red hat & rpm distros *Fedora, CentOS, OpenSUSE, etc...*](#red-hat--rpm-distros-fedora-centos-opensuse-etc)
  - [Other distros & macOS](#other-distros--macos)
    - [Install commands *recommended*](#install-commands-recommended)
    - [Using git](#using-git)
    - [PATH issues *(pokeget not found when doing a local install)*](#path-issues-pokeget-not-found-when-doing-a-local-install)

## Arch linux & Arch linux derivatives *Manjaro, EndeavorOS, etc...*

On Arch linux, you can install it from AUR:

``` bash
yay -S pokeget-git
```

## Debian & Debian derivatives *Ubuntu, Linux mint, etc...*

You can download the .deb package from the [releases tab](https://github.com/talwat/pokeget/releases) and then use dpkg/apt to install pokeget. If you do that, please uninstall & update pokeget using dpkg/apt.

In true debian fashion this is the most stable option.

## Red hat & rpm distros *Fedora, CentOS, OpenSUSE, etc...*

You can download the .rpm package from the [releases tab](https://github.com/talwat/pokeget/releases) and then use rpm/your distros main package manager to install pokeget. If you do that, please uninstall & update pokeget using rpm/your distros main package manager.

## Other distros & macOS

### Install commands *recommended*

*Note: the install commands should be exactly the same for **updating**, and **repairing** pokeget in case `pokeget update` fails.*

You can install pokeget by running these install commands:

```bash
mkdir -p ~/.local/bin
curl -s https://raw.githubusercontent.com/talwat/pokeget/main/pokeget --output ~/.local/bin/pokeget
chmod +x ~/.local/bin/pokeget
```

Which will preform a local installation, or to install for all users do:

```bash
sudo curl -s https://raw.githubusercontent.com/talwat/pokeget/main/pokeget --output /usr/bin/pokeget
sudo chmod +x /usr/bin/pokeget
```

### Using git

You can also clone the repository and then run the script from the directory you cloned it in, in which case you can run `git pull` to update it if you haven't moved the script to a different directory, or you can run `make install`.

### PATH issues *(pokeget not found when doing a local install)*

If pokeget is not found after doing a user installation, then do a system wide installation because this usually means `~/.local/bin` is not added to PATH.

If you want to add `~/.local/bin` to PATH append `export PATH="$HOME/.local/bin:$PATH"` to your shells rc file. For example you can run `echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc` if you use bash.
