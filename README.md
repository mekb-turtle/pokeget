# pokeget

[![GitHub stars](https://img.shields.io/github/stars/talwat/pokeget)](https://github.com/talwat/pokeget/stargazers)
[![GitHub license](https://img.shields.io/github/license/talwat/pokeget)](https://github.com/talwat/pokeget)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/talwat/pokeget)
![GitHub repo size](https://img.shields.io/github/repo-size/talwat/pokeget)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/talwat/pokeget)
![GitHub last commit](https://img.shields.io/github/last-commit/talwat/pokeget)
![GitHub contributors](https://img.shields.io/github/contributors/talwat/pokeget)
![GitHub watchers](https://img.shields.io/github/watchers/talwat/pokeget)
[![GitHub forks](https://img.shields.io/github/forks/talwat/pokeget)](https://github.com/talwat/pokeget/network)
[![GitHub issues](https://img.shields.io/github/issues/talwat/pokeget)](https://github.com/talwat/pokeget/issues)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/talwat/pokeget)

Pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.

## Table of contents

- [pokeget](#pokeget)
  - [Table of contents](#table-of-contents)
  - [Info](#info)
  - [Examples](#examples)
  - [Installation](#installation)
    - [Arch linux](#arch-linux)
    - [Other distros](#other-distros)
  - [Uninstallation](#uninstallation)
  - [Sources](#sources)
  - [Usage](#usage)
  - [Dependencies](#dependencies)
  - [Contributors](#contributors)
  - [FAQ](#faq)
    - [Hey, isn't this similar to pokemon-colorscripts?](#hey-isnt-this-similar-to-pokemon-colorscripts)
      - [pokeget example](#pokeget-example)
      - [pokemon-colorscripts example](#pokemon-colorscripts-example)
  - [Todo](#todo)
  - [Known issues](#known-issues)

## Info

Pokeget has support for all pokemon up to gen 8 *including gen 8* and is written in bash.

Pokeget has only needs basic dependencies usually preinstalled in GNU/Linux systems.

You can also use `pokeget-lite` if you think normal pokeget is bloated and you want something a lot simpler.

## Examples

![pokeget](https://github.com/talwat/pokeget/raw/main/examples/small1.png)
![pokeget](https://github.com/talwat/pokeget/raw/main/examples/big1.png)

## Installation

### Arch linux

On Arch linux, you can install it from AUR:

``` bash
paru -S pokeget-git
```

### Other distros

*Note: the install commands should be exactly the same for **updating**, and **repairing** pokeget.*

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

You can also clone the repository and then run the script from the directory you cloned it in, in which case you can run `git pull` to update it if you haven't moved the script to a different directory.

When updating, make sure you do the same command you did when installing to avoid having multiple copies of pokeget.

If pokeget is not found after doing a user installation, then do a system wide installation, because this usually means `~/.local/bin` is not added to PATH.

If you want to add `~/.local/bin` to PATH append `export PATH="$HOME/.local/bin:$PATH"` to your shells rc file. For example you can run `echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc` if you use bash.

## Uninstallation

You can use the uninstall script by doing:

```bash
bash <(curl -s https://raw.githubusercontent.com/talwat/pokeget/main/scripts/uninstall.sh)
```

in your shell to remove a local installation, and to remove a system wide installation do:

```bash
sudo bash <(curl -s https://raw.githubusercontent.com/talwat/pokeget/main/scripts/uninstall.sh)
```

*Keep in mind if you did a **system wide installation** all users who used pokeget will have to delete their pokeget config files manually*

The pokeget configuration files are located in `~/.config/pokeget` so keep that in mind.

## Sources

Sprites are taken from [Pokemon Reborn](https://www.rebornevo.com/) *(A pokemon fan game)*, and vanilla sprites are taken from [PokeAPI](https://github.com/PokeAPI/sprites).

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

It should also be able to run on macOS, however it has not been tested yet.

*If you test it on **macOS**/**other non linux systems** you can open an issue with your results and they will be added in this section of the README.*

## Contributors

- [Talwat](https://github.com/talwat) Lead maintainer and creator of pokeget.

- [LoganWalls](https://github.com/LoganWalls) Made a script to scrape a list of pokemon.
This helped a lot to be able to get pokemon with sprites instead of national dex id's.

- [acxz](https://github.com/acxz) Fixing a small spacing issue, and making feature requests.

- [crstian19](https://github.com/crstian19) Submitted pokeget to the AUR *Arch User Repository*.

## FAQ

### Hey, isn't this similar to [pokemon-colorscripts?](https://gitlab.com/phoneybadger/pokemon-colorscripts/)

Pokeget is not a clone of pokemon-colorscripts, nor was inspired by it in the first place.

The true main difference is that pokemon-colorscripts gets its sprites from a folder stored locally while pokeget get's its sprites from the pokeget github repo.
This allows pokeget's sprites to be renamed, fixed, redone, and tweaked without any update necessary from the user. Pokeget is very portable and has very few dependencies *just cURL and bash!*.

When I googled about similar tools while I was developing the first version of pokeget I found pokemon-colorscripts and even used it as a source for a while.
But I continued developing pokeget because I generally had some issues with it and I thought it could be improved,

pokemon-colorscripts has issues with its sprites with some of them appearing blurry, as well as a lack of big sprites, shiny sprites, mega forms, variants, back sprites, and generally having less options. Additionally, pokemon-colorscripts hasn't been updated in 6 months *at the time of writing this*.

Pokeget has already achieved feature parity with pokemon-colorscripts, and generally has more features.

Pokemon-colorscripts is still a really cool program, but pokeget does fix some of its issues.

#### pokeget example

![pokeget](https://github.com/talwat/pokeget/raw/main/examples/pokeget-and-pokemon-colorscripts/pokeget-moltres.png)

#### pokemon-colorscripts example

![pokeget](https://github.com/talwat/pokeget/raw/main/examples/pokeget-and-pokemon-colorscripts/pokemon-colorscripts-moltres.png)

## Todo

- [x] Add support for displaying pokemon with names instead of national dex id's.

- [x] Add uninstall script.

- [x] Add support for selecting random pokemon and random pokemon from specific generations.

- [ ] Add support for multiple pokemon at once side by side.

- [x] Add support for getting sprites from [PokeAPI](https://github.com/PokeAPI)

## Known issues

During testing, some of the unicode symbols have displayed incorrectly, this is still being worked on.
