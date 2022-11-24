netstat -an | grep 27017
# How to check if mongo db is running on Mac?
# ps -ef | grep mongod | grep -v grep | wc -l | tr -d ' '
- This will get you the number of MongoDB processes running, thus if it is other than 0, then you have MongoDB running on your system.
- The ps -ef | grep mongod part return all the running processes, that have any relation to the supplied string, i.e. mongod, e.g. have the string in the executable path, have the string in the username, etc.
- When you run the previous command, the grep mongod also becomes a process containing the string mongod in the COMMAND column of ps output, so it will also appear in the output. For that reason you need to eliminate it by piping grep -v grep, which filters all the lines from the input that contain the string grep.
- So now you have all possible lines that contain string mongod and are not the instances of grep. What to do? Count them, and do that with wc -l.
- wc -l output contains additional formatting, i.e. spaces, so just for the sake of the beauty, run tr -d ' ' to remove the redundant spaces.
- As a result you will get a single number, representing the number of processes you grep'ed for.