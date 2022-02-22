# pokeget Usage Page

## Basic Syntax

`pokeget [flags] <pokemon national dex id>`

Example: `pokeget 282`

*No flags are **required** for the program to run*

## Special commands

### help

Displays a help menu containing information about flags and Special commands.

### update

Automatically runs the update script to update pokeget.

### random

This will pick a random pokemon to display. This also will work with other flags like -shiny.

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

### -variant

This flag dictates a lot of things, such as:
Wether the pokemon is mega, alolan form, pokemon specific things such as arceus, and a few other attributes.

Also, the format of this flag is `-variant <number>`, so keep that in mind.

## Config file

Pokeget generates a config file at `~/.config/pokeget/`.

This config file has options that allow you to change defaults.

You can also set `getFromNames` to true in order to be able to get pokemon using words instead of national dex ids.
This is still **experimental** however, so be warned.

### getFromNames

The only other thing that you should be aware of when enabling this, is that instead of spaces you put `_` and `'` have been removed from the names of pokemon such as farfetch'd.
