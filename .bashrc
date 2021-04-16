[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.config/env ] && . ~/.config/env
eval "$(jump shell)"
export _JAVA_AWT_WM_NONREPARENTING=1
#PATH=/home/linuksiarz/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH
