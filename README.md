# pokeget

[![GitHub stars](https://img.shields.io/github/stars/talwat/pokeget)](https://github.com/talwat/pokeget/stargazers)
![GitHub watchers](https://img.shields.io/github/watchers/talwat/pokeget)
[![GitHub forks](https://img.shields.io/github/forks/talwat/pokeget)](https://github.com/talwat/pokeget/network)
![GitHub Action](https://img.shields.io/github/workflow/status/talwat/pokeget/pre-commit)
[![GitHub license](https://img.shields.io/github/license/talwat/pokeget)](https://github.com/talwat/pokeget)
![GitHub last commit](https://img.shields.io/github/last-commit/talwat/pokeget)
![GitHub contributors](https://img.shields.io/github/contributors/talwat/pokeget)
[![GitHub issues](https://img.shields.io/github/issues/talwat/pokeget)](https://github.com/talwat/pokeget/issues)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/talwat/pokeget)
![In homebrew/core](https://img.shields.io/badge/In%20homebrew%2Fcore%3F-no-red)

pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.

## Table of contents

- [pokeget](#pokeget)
  - [Table of contents](#table-of-contents)
  - [Info](#info)
  - [Examples](#examples)
  - [Installation](#installation)
  - [Uninstallation](#uninstallation)
  - [Sources](#sources)
  - [Usage](#usage)
  - [Dependencies](#dependencies)
  - [pokeget-lite](#pokeget-lite)
  - [Contributors](#contributors)
  - [Developing](#developing)
  - [Other projects](#other-projects)
  - [FAQ](#faq)
    - [Hey, isn't this similar to pokemon-colorscripts?](#hey-isnt-this-similar-to-pokemon-colorscripts)
  - [Todo](#todo)
  - [Known issues](#known-issues)

## Info

pokeget has support for all pokemon up to gen 8 *including gen 8* and is written in bash.

pokeget has only needs basic dependencies usually preinstalled in [GNU](https://www.gnu.org/)/[Linux](https://kernel.org/) systems.

You can also use `pokeget-lite` if you think normal pokeget is bloated and you want something a lot simpler.

## Examples

![pokeget](https://github.com/talwat/pokeget/raw/main/examples/small1.png)
![pokeget](https://github.com/talwat/pokeget/raw/main/examples/big1.png)

## Installation

You can go to [INSTALLING.md](INSTALLING.md) for instructions.

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

To run pokeget you will need is bash, [cURL](https://curl.se/), and the [GNU](https://www.gnu.org/) coreutils.

To install pokeget, you will need [cURL](https://curl.se/) if you don't clone the repository and instead use the install instructions.

All dependencies are usually installed by default on most Linux distros, as this script is designed to run on [GNU](https://www.gnu.org/)/[Linux](https://kernel.org/).

If you run it on macOS/darwin certain features will be disabled, but most things will work fine.

*If you test it on **other non [GNU](https://www.gnu.org/)/[Linux](https://kernel.org/) systems** you can open an issue with your results and they will be added in this section of the README.*

## pokeget-lite

pokeget-lite is a much simpler script in comparison to normal pokeget.
*pokeget-lite is just under 50 sloc!*

It has no flags or a config file, and is limited to small sprites only. It supports sprites up to gen 8 *including gen 8*.

It still requires bash and [cURL](https://curl.se/), however if you plan to use it on a non-[GNU](https://www.gnu.org/) system such as [Alpine](https://alpinelinux.org/) you might have more success due to it not relying on any of the [GNU](https://www.gnu.org/) coreutils.

## Contributors

- [Talwat](https://github.com/talwat) Lead maintainer and creator of pokeget.

- [LoganWalls](https://github.com/LoganWalls) Made a script to scrape a list of pokemon.
This helped a lot to be able to get pokemon with sprites instead of national dex id's.

- [acxz](https://github.com/acxz) Fixing a small spacing issue, and making feature requests.

- [crstian19](https://github.com/crstian19) Submitted pokeget to the AUR *Arch User Repository*.

- [Vagahbond](https://github.com/Vagahbond) Made pokeget automatically know wether the user wanted to get a pokemon by ID or by name.

## Developing

You can go to [DEVELOPING.md](DEVELOPING.md) for developer documentation.

## Other projects

If theres an other project you want to see a comparison to, you can go to [OTHER_PROJECTS.md](OTHER_PROJECTS.md).

If a project you think should be compared/mentioned, open an issue or a pull request and I can add a chapter about it.

## FAQ

### Hey, isn't this similar to [pokemon-colorscripts?](https://gitlab.com/phoneybadger/pokemon-colorscripts/)

See [OTHER_PROJECTS.md](OTHER_PROJECTS.md#pokemon-colorscripts) for some info about this.

## Todo

- [x] Add support for displaying pokemon with names instead of national dex id's.

- [x] Add uninstall script.

- [x] Add support for selecting random pokemon and random pokemon from specific generations.

- [x] Make an official macOS port

- [x] Move sprites to an external repository

## Known issues

~~During testing, some of the unicode symbols have displayed incorrectly, this is still being worked on.~~
This basically boils down to external factors such as your terminal emulator. This is not an issue with pokeget.
