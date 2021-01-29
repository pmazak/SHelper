# SHelper
Simple way to offer --help functionality in all your shell scripts.

# Example
```
[me@linux ~]$ sh grepLogs.sh --help
Usage:
  sh grepLogs.sh <regex> (<maxNumMatches>)
Example:
  sh grepLogs.sh .+ABC.+
Description:
  Runs the log grepper job
```
Also works: ```[me@linux ~]$ sh grepLogs.sh -help```

Also works: ```[me@linux ~]$ sh grepLogs.sh -?```

# Installation
1. In your script follow the convention below so the first 3 comment lines give the description, arguments and example. 
```
#  Runs the log grepper job
#  <regex> (<maxNumMatches>)
#  .+ABC.+
```
1. Include this line in your script after the comment lines: ```source `dirname $0`/initHelp.sh```
1. That's it!

# Convention
- Description is the first line in the script file as a commented line.
- Usage argument names are the second line in the script file as a commented line.
- Example arguments go on the third line of the script file as a commented line.
- You may choose to wrap (parentheses) around optional arguments.
