#export PATH="$HOME/bin:$GITREPOS/depot_tools:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
exec startxfce4
# Not working
#ibus-daemon -drx
#conky &
