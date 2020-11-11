# dotfiles
My system configuration source-controlled and scripted for automated setup.

This has significant pieces from https://github.com/gibiansky/dotfiles edited to fit my preferred configuration.

## Setup

```
# Clone this repo.
mkdir -p $HOME/code
git clone http://www.github.com/rjullman/dotfiles $HOME/code/dotfiles

# Configure dot files.
$HOME/code/dotfiles/init.sh
```

## Additional Mac Setup

```
# Download homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Open taps.
homebrew/cask
homebrew/cask-drivers
homebrew/cask-versions
homebrew/core

# Run all commands for brew provisioning.
brew-provision
```

### iTerm2

- Download a patched font (e.g. [Meslo](https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)), install the font by opening the downloaded `.tff` file, and set the font in iTerm2 (iTerm2 → Preferences → Profiles → Text → Change Font).
- Download a solarized theme (I use the [Patched Solarized Dark Theme](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors)) and apply it in iTerm2 (iTerm2 → Preferences → Profiles → Colors → Color Presets → Import).
- Disable drawing bold text in bright colors (iTerm2 → Preferences → Profiles → Colors → Bold).  Solarized does not define bright colors so leaving this enabled with effectively disabled the solarized theme for bold text.

### Hotkeys

- To use Hammerspoon (and all the associated window resizing and focus grabbing hotkeys) you must give Hammerspoon OSX Accessibility access (Hammerspoon → Preferences → Enable Accessibility).
- Set the Alfred 3 hotkey (Alfred → Preferences → Alfred Hotkey). I use ctrl-shift-alt-space.
- Create an iTerm2 dedicated hotkey window (iTerm2 → Preferences → Profiles → Keys → Configure Hotkey Window).  I set the hotkey to ctrl-shift-space.
- Remap 'Caps Lock' to 'Escape' (System Preferences → Keyboard → Modifier Keys -> Caps Lock Key).
