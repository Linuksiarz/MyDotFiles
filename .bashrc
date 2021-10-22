set -o vi

[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.config/env ] && . ~/.config/env

# Use jump
eval "$(jump shell)"

# Fix blank windows in java apps (mostly JetBrains IDEs) under Sway
[ -n "${SWAYSOCK}" ] && export _JAVA_AWT_WM_NONREPARENTING=1

# Enable wayland in firefox under sway
[ -n "${SWAYSOCK}" ] && MOZ_ENABLE_WAYLAND=1

# https://bbs.archlinux.org/viewtopic.php?id=217281
export $(dbus-launch)

# Additional paths
export PATH=$PATH:/opt/bin:$HOME/.local/bin
