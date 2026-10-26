
# Dotfiles

My personal development environment configurations for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/).

This repository keeps my terminal, shell, editors, and AI coding tools configured in one place. It makes my setup easier to maintain, back up, and reproduce on another machine.

## Contents

| Tool | Description | Configuration |
|---|---|---|
| [Zsh](https://www.zsh.org/) | Shell configuration, PATH, and aliases | `zsh/` |
| [iTerm2](https://iterm2.com/) | Terminal profile and appearance | `iterm2/` |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer configuration | `tmux/` |
| [Helix](https://helix-editor.com/) | Editor settings, language configuration, and themes | `helix/` |
| [Neovim](https://neovim.io/) | Neovim configuration with NvChad | `nvim/` |
| [OpenCode](https://opencode.ai/) | AI coding assistant configuration | `opencode/` |
| [Pi](https://github.com/badlogic/pi-mono) | Pi coding agent settings, model providers, and custom theme | `pi/` |

## Repository Structure

```text
dotfiles/
├── helix/
│   └── .config/helix/
├── iterm2/
│   └── profiles/
├── nvim/
│   └── .config/nvim/
├── opencode/
│   └── .config/opencode/
├── pi/
│   └── .pi/agent/
├── tmux/
│   └── .tmux.conf
├── zsh/
│   └── .zshrc
├── .gitignore
└── README.md
```

## Requirements

- macOS
- Git
- [Homebrew](https://brew.sh/)
- [GNU Stow](https://www.gnu.org/software/stow/)
- The applications you want to configure

Install the basic dependencies:

```bash
brew install git stow
```

Install the applications you plan to use separately. Some configurations may rely on additional tools, language servers, formatters, fonts, or plugins.

## Installation

### 1. Clone the repository

```bash
git clone git@github.com:Monish-K-S/dotfiles.git ~/Desktop/codebase/dotfiles
cd ~/Desktop/codebase/dotfiles
```

Alternatively, use HTTPS:

```bash
git clone https://github.com/Monish-K-S/dotfiles.git ~/Desktop/codebase/dotfiles
cd ~/Desktop/codebase/dotfiles
```

### 2. Back up existing configurations

Before creating symlinks, back up any configuration files or directories that already exist. GNU Stow may report conflicts if a target already exists.

For example:

```bash
cp ~/.zshrc ~/.zshrc.backup
cp ~/.tmux.conf ~/.tmux.conf.backup
```

Back up existing editor and application configuration directories separately if you plan to replace them.

Do not overwrite or delete existing configurations until you have checked what they contain.

### 3. Stow the configurations

Run the following from the repository root:

```bash
stow --target="$HOME" zsh
stow --target="$HOME" tmux
stow --target="$HOME" helix
stow --target="$HOME" nvim
stow --target="$HOME" opencode
stow --target="$HOME" pi
```

Each command creates symlinks from the corresponding package into your home directory.

**Important:** If Stow reports a conflict, inspect the existing file or directory first. Back it up or resolve the conflict before retrying. Do not force the operation.

### 4. Configure iTerm2

The iTerm2 profile is stored in:

```text
iterm2/profiles/Default.json
```

Import it through iTerm2's settings:

1. Open iTerm2.
2. Open Settings.
3. Navigate to Profiles.
4. Use the profile import option to import `Default.json`.
5. Select the imported profile as your default if desired.

The iTerm2 profile is imported through the application rather than managed by the Stow commands above.

### 5. Verify the setup

Check the symlinks:

```bash
ls -l ~/.zshrc
ls -l ~/.tmux.conf
ls -l ~/.config/helix
ls -l ~/.config/nvim
ls -l ~/.config/opencode
ls -l ~/.pi/agent
```

Then launch the applications you configured and confirm that your settings load correctly.

## Configuration Notes

### Zsh

Contains shell settings, Homebrew paths, Python 3.11 aliases, and paths for user-installed tools.

### iTerm2

Contains an exported terminal profile, including appearance and font settings.

### tmux

Contains terminal multiplexer settings, including key bindings, mouse support, status bar customization, and plugin configuration.

### Helix

Contains editor preferences, language-server and formatter settings, and custom themes.

### Neovim

Contains my Neovim configuration built around NvChad, including options, mappings, plugins, LSP configuration, formatting, and the plugin lockfile.

### OpenCode

Contains CLI preferences and the main OpenCode configuration, including model-provider definitions and permission settings.

Provider credentials should be supplied through environment variables or another appropriate local secret-management method—not committed to the repository.

### Pi

Contains selected Pi agent settings, model-provider definitions, and a custom theme.

Authentication files, conversation history, databases, caches, and other private application data are intentionally excluded.

## Updating the Repository

After changing a tracked configuration:

```bash
cd ~/Desktop/codebase/dotfiles
git status
git diff
```

Review the changes before committing:

```bash
git add .
git diff --cached
git diff --cached --check
```

Commit and push:

```bash
git commit -m "Update dotfiles"
git push
```

Only stage files you intend to publish. Before pushing, check that no API keys, passwords, access tokens, authentication files, or other private information have been added.

## Safety and Privacy

This is a public repository, so everything committed here should be considered publicly accessible.

- Never commit API keys, passwords, access tokens, or private keys.
- Keep authentication files and local application data out of Git.
- Use environment variables for provider credentials.
- Review changes before every commit and push.
- Keep local backups when replacing existing configurations.

## Philosophy

- **Simple:** Keep configurations organized by application.
- **Portable:** Use symlinks to connect configurations to their expected locations.
- **Maintainable:** Track changes with Git.
- **Reproducible:** Make it easier to restore a familiar development environment.
- **Safe:** Keep secrets and private application data out of version control.

---

*Personal dotfiles for my macOS development environment.*
