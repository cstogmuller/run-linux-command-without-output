
# run a Linux command in terminal without output
## Usage, Update, Uninstallation
```
$ run --help
Usage:
'run [sudo] COMMAND'
starts a program or executes a comand without any output

'run --update'
checks for updates and installs them if necessary

'run --uninstall'
uninstalls run command
```
Info: You can choose an alias during installation in case the "run" command is busy.
## Installation

Make sure you have `git` and `wget` installed

Paste the following paragraph into your terminal:

```
cd ~/
rm -d -r -f ~/run-linux-command-without-output > /dev/null
git clone https://github.com/cstogmuller/run-linux-command-without-output.git
chmod a+x ~/run-linux-command-without-output/install-run.sh
~/run-linux-command-without-output/install-run.sh
```
    
