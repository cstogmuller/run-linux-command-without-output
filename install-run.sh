#!/bin/bash

function command {
echo "Please enter a command name to be used for the run tool."
echo '(The "run" below is a placeholder. You can change it if you want.)'
read -e -p "> " -i "run" command ignored
if [ "$command" == "" ]; then
  clear
  echo "You have to enter a command name to be used for the run tool."
  echo
  command
else
  if test -f "/usr/bin/$command"; then
    clear
    echo "The command '$command' already exists."
    echo
    command
  else
    if test -f "${0%/*}/run"; then
      clear
      sudo echo -n
      cp --remove-destination "${0%/*}/run" "/tmp"
      sudo mv "/tmp/run" "/usr/bin/$command"
      sudo chmod a+x "/usr/bin/$command"
      echo "The '$command' command is ready to use."
      echo "You can remove the $command command by using '$command --uninstall'."
      read -e -p "Do you want to delete the installation files (${0%/*})? [Y/n] " delete
      if [ "$delete" == "y" ] || [ "$delete" == "Y" ]; then
        rm -d -r -f ${0%/*}
        echo "Installation files deleted. Installation completed."
      else
        echo "Installation completed."
      fi
    else
      clear
      echo 'ERROR  The "run" file, which should be in this folder, is missing. Please download the project again.'
    fi
  fi
fi
}


clear
echo "v1.0"
command
