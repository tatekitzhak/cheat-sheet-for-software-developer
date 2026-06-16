# Uninstalling Docker Desktop on macOS
Using the Docker Desktop App
Open Docker Desktop
Click the Docker icon in the menu bar
Select Troubleshoot (the bug icon)
Click Uninstall
# Manual Removal (If Docker Desktop Is Broken)

# Remove the Docker Desktop application
sudo rm -rf /Applications/Docker.app

# Remove Docker Desktop data
rm -rf ~/Library/Group\ Containers/group.com.docker
rm -rf ~/Library/Containers/com.docker.docker
rm -rf ~/Library/Application\ Support/Docker\ Desktop
rm -rf ~/Library/Preferences/com.docker.docker.plist
rm -rf ~/Library/Saved\ Application\ State/com.electron.docker-frontend.savedState
rm -rf ~/Library/Logs/Docker\ Desktop
rm -rf ~/Library/Preferences/com.electron.docker-frontend.plist
rm -rf ~/Library/Cookies/com.docker.docker.binarycookies

# Remove Docker Desktop CLI symlinks and credential helpers
sudo rm -f /usr/local/bin/docker
sudo rm -f /usr/local/bin/docker-compose
sudo rm -f /usr/local/bin/docker-credential-desktop
sudo rm -f /usr/local/bin/docker-credential-osxkeychain
sudo rm -f /usr/local/bin/hub-tool
sudo rm -f /usr/local/bin/com.docker.cli

# Remove Docker socket and config
rm -rf ~/.docker
sudo rm -f /var/run/docker.sock



- https://github.com/docker/for-mac/issues/7071

`https://desktop.docker.com/mac/main/amd64/122432/Docker.dmg?_gl=1*1djsy22*_ga*MjAyNzUwMzM5NC4xNjk5ODM5MTIx*_ga_XJWPQMJYHQ*MTY5OTgzOTEyMC4xLjEuMTY5OTg0MTcyNC41Ny4wLjA`


solution of gvzq here above worked !
using Big Sur within VSCode using the docker 4.24.0 (122432) at [Mac with Intel chip]

(https://desktop.docker.com/mac/main/amd64/122432/Docker.dmg?_gl=1*1djsy22*_ga*MjAyNzUwMzM5NC4xNjk5ODM5MTIx*_ga_XJWPQMJYHQ*MTY5OTgzOTEyMC4xLjEuMTY5OTg0MTcyNC41Ny4wLjA.) from https://docs.docker.com/desktop/release-notes/#4240.

working with VSCode I wanted to use docker on my intelchip Macbookpro 2016, I needed minimal to upgrade from MacOs 11.7.10 to Macos 12 Monterey. should install but it does not.
I can not get Monterey working so i took a lower docker 4.24.0

Thank You