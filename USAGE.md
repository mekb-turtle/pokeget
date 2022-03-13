# pokeget Usage Page

## Table of contents

- [pokeget Usage Page](#pokeget-usage-page)
  - [Table of contents](#table-of-contents)
  - [Basic Syntax](#basic-syntax)
  - [Special commands](#special-commands)
    - [help](#help)
    - [update](#update)
    - [uninstall](#uninstall)
    - [doctor](#doctor)
  - [Flags](#flags)
    - [-small](#-small)
    - [-big](#-big)
  - [-back](#-back)
    - [-front](#-front)
    - [-shiny](#-shiny)
    - [-notshiny](#-notshiny)
    - [-partner](#-partner)
    - [-variant \<num>](#-variant-num)
    - [-random \<gen>](#-random-gen)
  - [Config file](#config-file)
    - [getVanilla](#getvanilla)
    - [cache](#cache)

## Basic Syntax

`pokeget [flags] <pokemon national dex id>`

Example: `pokeget 282`

*No flags are **required** for the program to run*

## Special commands

### help

Displays a help menu containing information about flags and Special commands.

### update

Automatically runs the update script to update pokeget. Use sudo if you did a system wide install.

### uninstall

This will run the uninstall script to remove pokeget. Use sudo if you did a system wide install.

### doctor

This will run the doctor script which will attempt to diagnose any issues.

## Flags

### -small

Makes the pokemon a smaller sprite. In the pokemon games, this would be the sprite found when browsing the pokemon storage system.

### -big

Makes the pokemon a big sprite. In the pokemon games, this would be the sprite found of your opponents pokemon while battling.

## -back

Makes the pokemon the back sprite. in the pokemon games, this would be the sprite found of your pokemon while battling. Only works on big sprites.

### -front

Makes the pokemon the front sprite. in the pokemon games, this would be the sprite found of your opponents pokemon while battling. Only works on big sprites.

### -shiny

Dictates wether the pokemon is shiny. It works with all sprites.

*Note: the shiny colors are from pokemon reborn, so a lot of them are completely different than the normal shiny colors.*

### -notshiny

Makes the pokemon not shiny.

### -partner

Makes two of the same pokemon instead of just one.

### -variant \<num>

This flag dictates a lot of things, such as:
Wether the pokemon is mega, alolan form, pokemon specific things such as arceus, and a few other attributes.

### -random \<gen>

This flag makes a random pokemon. You can specify what generations the random pokemon will be in, or if you put '0' it will pick a random pokemon from any generation.s
Random generations should be separated by ',' with no spaces.

## Config file

Pokeget generates a config file at `~/.config/pokeget/`.

This config file has options that allow you to change some default values, for example if you wanted pokemon to be shiny by default you could do that in the config file.

### getVanilla

This option in the config file makes pokeget get from a different folder on the sprites repo which has sprites from the official game. This option doesn't work with variants however, so keep that in mind.

### cache

This will cache new pokemon to `~/.cache/pokeget` which will allow for getting a pokemon you already got **much** faster.

The only downside is that on pokemon that you haven't gotten a specific pokemon before, it will take a little longer as it needs to be wrote to the disk instead of only being stored in memory.
