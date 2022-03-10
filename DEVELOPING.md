# Development docs & Contribution guidelines

- [Development docs & Contribution guidelines](#development-docs--contribution-guidelines)
  - [What pokeget does behind the scenes](#what-pokeget-does-behind-the-scenes)
  - [Styling the code](#styling-the-code)
  - [The sprites](#the-sprites)
  - [Contributing](#contributing)

## What pokeget does behind the scenes

Basically, pokeget first checks the first argument if it is a special command like `update`, and if none of the special commands have been called it assumes the user wants a pokemon.

Then, it will first set the default values for stuff like the `shiny` value, and then generate & import a config file.

After, it loops through all of the arguments (`$@`) and checks if any of them are a flag like `shiny`. If they are, it sets the value.

Some flags like `variant` instead set a variable which will then set the next argument after to the value.

## Styling the code

pokeget uses [shfmt](https://github.com/mvdan/sh) to style it's code. You can use whatever wrapper you would like, as long as it still internally uses shfmt.

Comments should be capitalized with no period at the end. There should also be a space separating the `#` and the comment itself.

```bash
# Like this
```

## The sprites

The sprites are just text files which are converted using a python script. The sprites can be found [here](https://github.com/talwat/pokeget-sprites).

The sprites use two of a unicode symbol (`██`) which in terminals looks like a perfect square.

All of the sprites require true-color support from the terminal, as without it they look weird and off-color.

## Contributing

If you would like to contribute, please make sure your code contains the following:

- Helpful comments

- As little extra dependencies as humanly possible

- Code that is lightweight and as efficient as you can
