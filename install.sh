#!/usr/bin/sh

[[ -w /usr/bin ]] \
	&& cp ./thmr /usr/bin/thmr \
	|| echo "Unable to install - need sudo permissions"

[[ -d $XDG_CONFIG_HOME/thmr ]] \
	|| mkdir -p $XDG_CONFIG_HOME/thmr

[[ -e $XDG_CONFIG_HOME/thmr/defaults.sh ]] \
	&& rm $XDG_CONFIG_HOME/thmr/defaults.sh

cp defaults.sh $XDG_CONFIG_HOME/thmr/defaults.sh

[[ -e $XDG_CONFIG_HOME/thmr/config ]] \
 || cp config $XDG_CONFIG_HOME/thmr/config
