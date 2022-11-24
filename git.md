*The tip of your current branch is behind its remote counterpart* means that there have been changes on the remote branch that you don’t have locally. And Git tells you to import new changes from REMOTE and merge it with your code and then push it to remote.
You can use this command to force changes to the server with the local repository (). remote repo code will be replaced with your local repo code.
- git push -f origin master
With the -f tag you will override the remote branch code with your local repo code.
----
