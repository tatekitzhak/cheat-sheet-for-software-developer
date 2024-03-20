# How to Install Python 3.7 on Ubuntu 20.* 22.04
- https://vegastack.com/tutorials/how-to-install-python-3-7-on-ubuntu-22-04/amp/

- https://askubuntu.com/questions/1144446/python-installed-in-ubuntu-but-python-command-not-found

# How to make python3.X default of Python 3?
- https://stackoverflow.com/questions/60824700/how-can-i-install-python-3-9-on-a-linux-ubuntu-terminal
- https://linuxconfig.org/how-to-change-from-default-to-alternative-python-version-on-debian-linux
- 

1. (Optional) `rm /usr/bin/python3`
- `ln -s /usr/bin/python3.5 /usr/bin/python3 `
2. Open with `vim ~/.bashrc` and create an alias in .bashrc,  ~/.bash_aliases, ~/.zshrc, etc.
- `alias python3='/usr/bin/python3.7'`
OR
- `alias python3='/usr/local/bin/python3.7'`
3. Once you make the above change, re-login or source your `.bashrc` file:
- `. ~/.bashrc`
### Check a python location
-
- `ls /usr/bin/python*`
- `ls /usr/local/bin/python*`
- `which python3`
- `which python3.7`



