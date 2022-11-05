#!/bin/bash

clear
echo "Please enter a command name to be used for the run tool."
echo '(The "run" below is a placeholder. You can change it if you want.)'
read -e -p "> " -i "run" command ignored
if [ "$command" == "" ]; then
  echo "You have to enter a command name to be used for the run tool."
else
  if test -f "/usr/bin/$command"; then
    echo "The command '$command' already exists."
  else
    if test -f "${0%/*}/run"; then
      clear
      sudo echo -n
      cp --remove-destination "${0%/*}/run" "/tmp"
      sudo mv "/tmp/run" "/usr/bin/$command"
      sudo chmod a+x "/usr/bin/$command"
      echo "Installation completed. You can now delete this folder."
      echo "The '$command' command is ready to use."
      echo "You can remove the '$command' command by using '$command --uninstall'."
    else
      clear
      echo 'ERROR  The "run" file, which should be in this folder, is missing. Please download the project again.'
    fi
  fi
fi
