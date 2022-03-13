# Contributing

If you would like to contribute, please make sure your code contains the following:

- Helpful comments

- As little extra dependencies as humanly possible

- Code that is lightweight and as efficient as you can

- Well named variables & functions

## Styling the code

pokeget uses [shfmt](https://github.com/mvdan/sh) to style it's code. You can use whatever wrapper you would like, as long as it still internally uses shfmt.

For example you can use [shell-format](https://marketplace.visualstudio.com/items?itemName=foxundermoon.shell-format) if you like [VSCode](https://code.visualstudio.com/), [emacs-shfmt](https://github.com/purcell/emacs-shfmt/) if you want to use [emacs](https://www.gnu.org/software/emacs/) and [format-shell](https://atom.io/packages/format-shell) if you want to use [atom](https://atom.io/).

A full list of wrappers can be found [here](https://github.com/mvdan/sh#related-projects).

Comments should be capitalized with no period at the end. There should also be a space separating the `#` and the comment itself.

```bash
# Like this
```

## Errors & warnings

Please make sure your code passes **all** [shellcheck](https://www.shellcheck.net/) checks and has no warnings or errors.
