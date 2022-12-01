## How To Install MongoDB on Mac
- https://github.com/mongodb/homebrew-brew
- https://www.youtube.com/watch?v=4crXgQZG4W8&ab_channel=MammothInteractive


Setup and Installing:
1. install homebrew
2. brew tap mongodb/brew
3. brew install mongodb-community@6.0
4. sudo mkdir -p /System/Volumes/Data/data/db
5. sudo chown -R `id -un` /System/Volumes/Data/data/db
6. sudo mongod --dbpath /System/Volumes/Data/data/db
3. brew install mongosh
4. brew install mongodb-database-tools

## Using mongodb-community-shell
- brew install mongodb/brew/mongodb-community-shell

It will ask you to overwrite link with mongo command.

- brew link --overwrite mongodb-community-shell


Starting/Stopping mongodb-community
-----------------------------------
- brew services start mongodb-community
- brew services stop mongodb-community
- brew services restart mongodb-community

## Indexes
- db.Collection_name.getIndexes()
### Create an index using createIndex() method:
- db.Collection_name.createIndex( Key and Index Type, Options)

