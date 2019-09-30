# Import secrets
if test -n "$(find ~/secrets -maxdepth 1 -name '*.sh' -print -quit)"  # https://stackoverflow.com/a/7702334
then
  for f in ~/secrets/*.sh; do source $f; done
fi

source $HOME/fedora-setup/shell/environment.sh
source $HOME/fedora-setup/shell/aliases.sh
source $HOME/fedora-setup/shell/less-termcap.sh
source $HOME/fedora-setup/shell/init.sh

# Support a local profile script that's not saved to source control.
if test -f $HOME/local_profile.sh
then
  source $HOME/local_profile.sh
else
  echo "# shell profile overrides that are not to be saved in source control" > $HOME/local_profile.sh
fi
