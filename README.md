# pokeget

[![GitHub stars](https://img.shields.io/github/stars/talwat/pokeget)](https://github.com/talwat/pokeget/stargazers)
[![GitHub license](https://img.shields.io/github/license/talwat/pokeget)](https://github.com/talwat/pokeget)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/talwat/pokeget)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/talwat/pokeget)
![GitHub last commit](https://img.shields.io/github/last-commit/talwat/pokeget)
![GitHub contributors](https://img.shields.io/github/contributors/talwat/pokeget)
![GitHub watchers](https://img.shields.io/github/watchers/talwat/pokeget)

Pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.

## Info

Pokeget has support for all pokemon up to gen 8 *including gen 8* and is written in bash.

Pokeget has only needs basic dependencies usually preinstalled in GNU/Linux systems.

## Examples

![pokeget](https://github.com/talwat/pokeget/raw/main/examples/small1.png)
![pokeget](https://github.com/talwat/pokeget/raw/main/examples/big1.png)

## Installation

*Note: the install commands should be exactly the same for updating, and repairing pokeget.*
You can install pokeget by running the install script:

```bash
bash <(curl -s https://raw.githubusercontent.com/talwat/pokeget/main/scripts/install.sh)
```

Which will preform a local installation, or to install for all users do:

```bash
sudo bash <(curl -s https://raw.githubusercontent.com/talwat/pokeget/main/scripts/install.sh)
```

When updating, make sure you do the same command you did when installing to avoid having multiple copies of pokeget.

## Uninstallation

Currently there is no uninstall script, however to remove pokeget simply do:

```bash
rm ~/.local/bin/pokeget
rm -rf ~/.config/pokeget
```

in your shell to remove a local installation, and to remove a system wide installation do:

```bash
sudo rm -rf /usr/bin/pokeget
```

*Keep in mind if you did a **system wide installation** all users who used pokeget will have to delete their pokeget config files manually*

The pokeget configuration files are located in `~/.config/pokeget` so keep that in mind.

## Sources

All sprites are taken from [Pokemon Reborn](https://www.rebornevo.com/) *(A pokemon fan game)*.

However, the original sprites and character designs are made by Game Freak.

The sprites have been converted into .txt files by me, so feel free to use them in other projects.

## Usage

The help command is `pokeget help`, if you need to get a quick reminder.

You can do `pokeget <pokemon national dex id>` to display the sprite.

If you want a list of flags, you can look at [USAGE.md](USAGE.md).

## Dependencies

To run pokeget you will need is bash and cURL.

To install pokeget, you will need cURL if you don't clone the repository and instead use the install instructions.

All dependencies are usually installed by default on most Linux distros, as this script is designed to run on GNU/Linux.

## Contributors

* [Talwat](https://github.com/talwat) Lead maintainer and creator of pokeget.

* [LoganWalls](https://github.com/LoganWalls) Made a script to scrape a list of pokemon.
This helped a lot to be able to get pokemon with sprites instead of national dex id's.

* [acxz](https://github.com/acxz) Suggesting feature parity with [pokemon colorscripts](https://gitlab.com/phoneybadger/pokemon-colorscripts).

## Todo

* [x] Add support for displaying pokemon with names instead of national dex id's.

* [x] Add uninstall script.

* [ ] Add simple animations to small sprites.

* [x] Add support for selecting random pokemon and random pokemon from specific generations.

* [ ] Add support for getting small sprites from bulbapedia.

## Known issues

During testing, some of the unicode symbols have displayed incorrectly, this is still being worked on.
