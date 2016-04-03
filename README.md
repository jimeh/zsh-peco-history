# zsh-peco-history

Search shell history with [peco][] when pressing ctrl+r.

Based on [zsh-history-search](https://github.com/mooz/percol#zsh-history-search)
snippet from [percol](https://github.com/mooz/percol).

![screenshot](https://github.com/jimeh/zsh-peco-history/raw/master/screenshot.png)

## Requirements

- [Peco][]
- [Zsh][]

[zsh]: http://www.zsh.org/
[peco]: https://github.com/peco/peco

## Installation

### Manual

1. Clone this repo to your machine. This guide uses `~/.zsh/zsh-peco-history`:

    ```sh
    git clone https://github.com/jimeh/zsh-peco-history.git ~/.zsh/zsh-peco-history
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-peco-history/zsh-peco-history.zsh
    ```

3. Start a new terminal session.

### [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/jimeh/zsh-peco-history.git $ZSH_CUSTOM/plugins/zsh-peco-history
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load:

    ```sh
    plugins=(zsh-peco-history)
    ```

3. Start a new terminal session.

### [Zplug](https://github.com/b4b4r07/zplug)

1. Add a zplug definition for zsh-peco-history to your `.zshrc`:

    ```sh
    zplug "jimeh/zsh-peco-history"
    ```

2. Start a new terminal session.

### [Antigen](https://github.com/zsh-users/antigen)

1. Add a antigen bundle definition for zsh-peco-history to your `.zshrc`:

    ```sh
    antigen bundle jimeh/zsh-peco-history
    ```

2. Start a new terminal session.

## Usage

1. Press ctrl+r while in a zsh shell and it should load up peco with your
shell's history.
2. Start typing to filter history down.
3. Press enter/return to pick a command from history.

### Recommended Peco Config

You don't have to use this config, it's simply what I personally use. So here's
what my `~/.peco/config.json` file looks like:

```json
{
  "Keymap": {
    "M-v": "peco.ScrollPageUp",
    "C-v": "peco.ScrollPageDown",
    "C-g": "peco.Cancel",
    "M-Space": "peco.ToggleRangeMode",
    "M-c": "peco.CancelRangeMode"
  },
  "Style": {
    "Basic": ["on_default", "default"],
    "Matched": ["cyan"],
    "Query": ["default"],
    "SavedSelection": ["on_blue", "white"],
    "Selected": ["on_magenta", "default"]
  }
}
```

## License

[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)
