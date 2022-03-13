# Development docs

- [Development docs](#development-docs)
  - [What pokeget does behind the scenes](#what-pokeget-does-behind-the-scenes)
  - [The sprites](#the-sprites)

## What pokeget does behind the scenes

Basically, pokeget first checks the first argument if it is a special command like `update`, and if none of the special commands have been called it assumes the user wants a pokemon.

Then, it will first set the default values for stuff like the `shiny` value, and then generate & import a config file.

After, it loops through all of the arguments (`$@`) and checks if any of them are a flag like `shiny`. If they are, it sets the value.

Some flags like `variant` instead set a variable which will then set the next argument after to the value.

## The sprites

The sprites are just text files which are converted using a python script. The sprites can be found [here](https://github.com/talwat/pokeget-sprites).

The sprites use two of a unicode symbol (`██`) which in terminals looks like a perfect square.

All of the sprites require true-color support from the terminal, as without it they look weird and off-color.
