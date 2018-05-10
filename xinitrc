#export PATH="$HOME/bin:$GITREPOS/depot_tools:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

exec startxfce4
ibus-daemon -drx

conky &
