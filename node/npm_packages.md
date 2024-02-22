## How to uninstall all npm packages with one command
### (macOS/Linux) delete node_modules and package-lock.json
- https://bobbyhadz.com/blog/npm-uninstall-all-packages

1. rm -rf node_modules
2. rm -f package-lock.json
3. rm -f yarn.lock
- Clean a npm cache after deleting node_modules and package-lock.json:
4. npm cache clean --force


### Node.js 