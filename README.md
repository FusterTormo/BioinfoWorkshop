# Introduction to Linux
Here you are going to find the slides and examples used by Francisco Fuster Tormo in the I Bioinformatics workshop

To download the data, click in "clone or download" button, and, after in "Download ZIP".

# How to connect to cluster
1. Open virtual box
2. Start EpiBioinfoVPN virtual machine
3. User &rarr; vpnuser
4. Password &rarr; vpnuser
5. Open “network connect”
6. Go to profiles &gt; new
7. Type this data
8. Click “OK”
9. Click on “Connect”
10. Open terminal and write: ssh msuser@ironwomen
11. Password &rarr; nZM0M8S7

---

# Summary of commands learnt

## Navigation in folders
* cd &rarr; Change directory
* pwd &rarr; Get the full path of the directory where I am
* mkdir &rarr; Create a new folder
* find &rarr; Find files in the directory
* ls &rarr; List all the files and folders that the folder has

## Copy, move, and remove files
* touch &rarr; Creates an empty file
* mv &rarr; Move one file to a different destination/Rename the file
* cp &rarr; Copy the file in a different destination
* scp &rarr; Copy files from remote server
* rsync &rarr; Syncronize two folders
* rm &rarr; Remove files

## Working with files
* head &rarr; Show the first lines of the file
* tail &rarr; Show the last lines of the file
* cat &rarr; Show the complete file
* less &rarr; View the file
* grep &rarr; Find in file
* cut &rarr; Show only particular columns of the file
* sort &rarr; Sort the lines of the file
* diff &rarr; Compare two files
* uniq &rarr; Report or omit repeated lines in the file
* tr &rarr; Translate or delete characters of the file
 
## Special characters
* &gt; &rarr; Store the output of the program in a file
* &lt; &rarr; Use the information after the character as input
* &gt;&gt; &rarr; Append the output of the program to a file
* 2&gt; &rarr; Store the error sent by a program in a file
* 2&gt;&gt; &rarr; Append the error sent by a program to a file
* | &rarr; Use the output of a file as input for the other
* ; &rarr; Separator between commands
* \* &rarr; When searching, this means "whatever"
* . &rarr; Current folder
* .. &rarr; Parent folder

## Other interesting commands
* echo &rarr; Print something in terminal
* clear &rarr; Clean the terminal
* man &rarr; Print the manual of the command
* history &rarr; Print the list of all the commands used
* wc &rarr; Count the lines, words and bytes that a file has

## Compressing/Uncompressing files
* tar &rarr; Compress/Uncompress tar files
* gzip &rarr; Compress zip files
* gunzip &rarr; Uncompress zip files

## Working in cluster
* ssh &rarr; Connect to cluster
* qsub &rarr; Send bash script to execute in cluster
* qstat &rarr; Check status of our jobs
* qdel &rarr; Delete the job
