# dotfiles
My system configuration source-controlled and scripted for automated setup.

This was originally inspired by https://github.com/holman/dotfiles/blob/master/script/bootstrap and since has been influence by many other publicly posted dotfiles repositories.

## Setup
1. Clone this repository: `git clone git@github.com:rjullman/dotfiles.git`.
2. Run `dot` to kick off the setup process.  This exact code will only work on OSX (where I mostly develop), 
but the various scripts are easily pluggable.
Read https://github.com/rjullman/dotfiles/blob/master/dot to see how things work and to add more (or remove existing) automated setup.

## Additional Setup

### iTerm2

- Download a patched font (e.g. [Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20G%20M%20Regular%20for%20Powerline.ttf)), install the font by opening the downloaded `.tff` file, and set the font in iTerm2 (iTerm2 → Preferences → Profiles → Text → Change Font).
- Download a solarized theme (I use the [Patched Solarized Dark Theme](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors)) and apply it in iTerm2 (iTerm2 → Preferences → Profiles → Colors → Color Presets → Import).
- Disable drawing bold text in bright colors (iTerm2 → Preferences → Profiles → Text → Draw bold text in bright colors).  Solarized does not define bright colors so leaving this enabled with effectively disabled the solarized theme for bold text.

### Hotkeys

- To use Hammerspoon (and all the associated window resizing and focus grabbing hotkeys) you must give Hammerspoon OSX Accessibility access (Hammerspoon → Preferences → Enable Accessibility).
- Set the Alfred 3 hotkey (Alfred → Preferences → Alfred Hotkey). I use ctrl-shift-alt-space.
- Create an iTerm2 dedicated hotkey window (iTerm2 → Keys → Create Dedicated Hotkey Window).  I set the hotkey to ctrl-shift-space.
- Remap 'Caps Lock' to 'Escape' (System Preferences → Keyboard → Modifier Keys -> Caps Lock Key).
