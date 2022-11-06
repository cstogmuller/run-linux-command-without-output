
# run a Linux command in terminal without output

```bash
$ run --help
Usage:
'run [sudo] COMMAND'
starts a program or executes a comand without any output

'run --uninstall'
uninstalls run command
```
Info: You can choose an alias during installation in case the "run" command is busy.
## Installation

Make sure you have `git` and `wget` installed

Paste the following paragraph into your terminal:

```bash
cd ~/
rm -d -r -f "~/run-linux-command-without-output" > /dev/null
git clone https://github.com/cstogmuller/run-linux-command-without-output.git
chmod a+x ~/run-linux-command-without-output/install-run.sh
~/run-linux-command-without-output/install-run.sh
```
    
