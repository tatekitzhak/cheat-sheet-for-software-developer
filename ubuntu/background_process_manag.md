## Background Process Management
- 
- 
### How to find and stop a process 

On a Mac
- `ps -ef | grep sleep`
- `Example:` Check nginx runnig: `ps -ef | grep nginx`
### 
- To stay up to date, for macOS:

 - `ps -e | grep python | awk '{print "sudo kill -9",  $1}' | sh`


On a linux

- `ps -aux | grep sleep`
- `ps -ax | grep python | awk '{print "sudo kill -9",  $1}' | sh`


