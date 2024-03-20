# Install Python 3.7 on Ubuntu 22.04
- https://vegastack.com/tutorials/how-to-install-python-3-7-on-ubuntu-22-04/amp/
- https://stackoverflow.com/questions/19816275/no-acceptable-c-compiler-found-in-path-when-installing-python
- https://stackoverflow.com/questions/56749058/how-to-use-command-python3-to-execute-usr-local-bin-python3-6
- https://askubuntu.com/questions/1144446/python-installed-in-ubuntu-but-python-command-not-found
## Installing Python 3.7 on Ubuntu from Source
- https://linuxconfig.org/how-to-change-from-default-to-alternative-python-version-on-debian-linux
- https://qiita.com/murakami77/items/b612734ff209cbb22afb
- https://linuxhostsupport.com/blog/how-to-install-and-switch-python-versions-on-ubuntu-22-04/amp/
- https://stackoverflow.com/questions/56749058/how-to-use-command-python3-to-execute-usr-local-bin-python3-6
- First, install the packages required to compile the Python source and update the packages list
1. `sudo apt update`
2. `sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev`
- Use the wget command listed below to download the source code of the latest release from the Python download page:
3. `wget https://www.python.org/ftp/python/3.7.[*]/Python-3.7.[*].tgz`
4. Unzip the gzipped tarball after the download is finished: `tar -xf Python-3.7.[*].tgz`
5. `cd Python-3.7.[*]`
6. `./configure --enable-optimizations`
7. `sudo make altinstall`: Finally, install the Python binaries as shown. The altinstall command ensures that the default Python library on your system is not overwritten.
8.  Type the following command to confirm: `python3.7 --version` => Output: Python 3.7.[ * ]