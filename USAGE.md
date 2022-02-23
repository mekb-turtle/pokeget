# pokeget Usage Page

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

## Flags

### -small

Makes the pokemon a smaller sprite. In the pokemon games, this would be the sprite found when browsing the pokemon storage system.

### -big

Makes the pokemon a big sprite. In the pokemon games, this would be the sprite found of your opponents pokemon while battling.

## -back

Makes the pokemon the back sprite. in the pokemon games, this would be the sprite found of your pokemon while battling. Only works on big sprites.

### -shiny

Dictates wether the pokemon is shiny. It only works on big sprites.

*Note: the shiny colors are from pokemon reborn, so a lot of them are completely different than the normal shiny colors.*

### -variant \<num>

This flag dictates a lot of things, such as:
Wether the pokemon is mega, alolan form, pokemon specific things such as arceus, and a few other attributes.

### -random \<gen>

This flag makes a random pokemon. You can specify what generation the random pokemon will be in, or if you put `0` it will pick a random pokemon from any generation.

## Config file

Pokeget generates a config file at `~/.config/pokeget/`.

This config file has options that allow you to change defaults.
