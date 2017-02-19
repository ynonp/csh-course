# Unix tcsh Labs

## Part 1: Shell Review

1. Create a new directory for the course in your home folder called `lab`. Inside, create the following files: 
	* `main.c`, `game.c`, `enemy.c`, `hero.c`, `a.out`
	* `monster.h`, `human.h`
	* `.highscore`

2. Create the following directories under `lab`
	* `Music`, `Misc`, `Drivers`
	
2. Display all files starting with an `e`
3. Copy all files and folders starting with a capital letter to a new directory called capitals
4. Delete all files whose extension is a single letter
5. Rename both occurences of `Misc` folder to `Test`
6. Delete all files containing m

***

1. Use `ls` to list all files containing a lowercase letter in their name, AND the nonexistant file named `Hidden`
2. Now show the same list, but redirect standard output to a file
3. Now show the same list, but redirect standard error to a file
4. Combine 2 and 3: Redirect standard output to one file, and standard error to another
5. Create 3 files: `file1`, `file2`, `file3`
6. Use `hostname` to write the current host name into `file1`
7. Prevent file clobbering
8. Repeat (6). Did you get an error ?
9. Fix the error keeping the noclobber option set

## Part 2: Parameters and Variables

1. Write a shell script that takes a file name as a command line argument and prints its contents backwards (from last line to first). Hint: Use tac
3. Write a shell script that reads a file name from the user, prints its contents and the number of lines in the file.
5. Print a list of all the  file extensions in current folder using only shell builtins (no `cut`, `awk`, `sed`, `grep` or `tr`)
6. Print a list of all the file extensions in the current folder, showing each extension only once
7. Write a shell script that finds each directory named `Misc` under current folder recursively and replaces each to the name `Test`. Hint: Use find

## Part 3: Conditionals

1. Write a shell script that asks the user for a number, if the user chooses 7 - print "You Win".
2. Modify 02.csh from previous part so that it CAN take argument from command line. If no argument was passed read from `$<`
3. Write a shell script that takes an input argument and tells if it's a string or a number (Hint: try `expr a + 0`)
4. Write a shell script that takes 3 input arguments and prints out the largest one
5. Write a shell script called `eyes` that starts and tracks a single xeyes instance:
  - Typing `eyes start` starts xeyes and writes the started process id in a file (called eyes.pid). If the file already exists start should not start a new instance.
  - Typing `eyes stop` checks if an eyes.pid file exists, and if so kills the process and deletes the file. If no eyes.pid file exists stop should do nothing.
  - Typing `eyes status` checks if eyes.pid file exists. If it does prints "Running", else prints "Not Running".
  - Make sure `eyes stop` kills only the xeyes instance started by `eyes start`.

6. Write a shell script that takes two file names, and prints the contents of the larger one.
7. Write a shell script that reads a file name from the user, checks that the file is valid, and lowecases its name. For example, running `lc MyFile` should rename the file `MyFile` to `myfile`.
8. Write a shell script that prints the sum of its arguments
9. In windows end-of-line character is \r\n while in unix it's just \n. Write a shell script that takes a file and checks if its line endings are windows or unix (Hint: use xxd)

## Part 4: Loops
1. Write a shell script called "wait_for_user" that takes a user name and checks if the user is logged in. If she's not logged in, the script sleeps for 5 seconds and checks again in a loop - until the user logs in.
2. Write a shell script that takes input as command line arguments and
prints them out backwards (first argument printed last).
6. Write a shell script that takes a two file extensions as input (call them ext1 and ext2), and renames all files ending with ext1 to end with ext2.
7. write a shell script that takes several file names as inputs, and copies itself to each of the files. don't forget to set execute permissions on the target files.
9. Write a shell script that print an indented directory tree (without using tree, find or ls)


## Part 5: Getopt
1. Modify script 03 from part 4 to take a switch "-n". If the switch is provided, the script should just print "mv" commands without actually renaming files
2. Write a script that searches for text inside files. Its input switches determine in which files to look: 
  * `-p` to search in `*.pl` files
  * `-t` to search in `*.txt` files
  * `-c` to search in `*.c, *.cpp and *.h` files

User can combine multiple switches to search in many file types. If no switch is provided it should search in files with any extension



## Part 6: Named Pipes
1. Create a named pipe called `bob`
2. Print out the list of files to the named pipe. Notice ls blocks.
3. Read the contents of the pipe using cat. Notice ls unblocks.
4. Write a shell script that creates a named pipe and listens on it. For
   every new line it reads from the pipe, it should create a new file
whose name is the first word in the line.
Can you delete the named pipe when the script ends ?

5. Write a shell script that creates a named pipe and then executes
   `find /`. If it reads the word "exit" from the named pipe, it should
stop the find and quit.
Hint: `$!` is the process id of the last started process

 
## Part 7: Environment & Aliases

1. Create a new directory named: `I have $5`
2. Create a .csh script file to set up the following aliases:
    2. Create an alias that finds all files larger than 2k but smaller than 5k
    3. Create an alias that finds all directories in /tmp owned by the current user
    4. Create an alias that finds all files modified within the last 4 hours
    5. Create an alias that finds partial matches of a file name, so you could type: `findpartial txt` to get all files with txt in their name
    6. Create an alias for `cp` that turns it to `cp -i`
    7. Create an alias for `rm` that turns it to `rm -i`
    8. Create an alias that prints how many files exist under current directory
    9. Create an alias that prints how many executable files exist under current directory
    10. Create an alias that takes a date and prints how many files were modified in that date




## Part 8: Awk and Sed

1. Add a blank line after each line of input
6. Change an existing file, so each line should start with a '> '
4. Write a script that reads a file and prints its content with no blank lines.
5. Write a script that reads a file and prints out only the longest line
7. Write a script that takes a file name as input and performs:
  1. If a line starts with `#`, replace each character with a `-`
  2. For all other lines, replace each character with a `.`
9. Replace the first and last word in every line
10. The command `/sbin/ifconfig` prints out information about network interfaces. Here's a sample output for the command:
<pre><code>
en3: flags=8963<UP,BROADCAST,SMART,RUNNING,PROMISC,SIMPLEX,MULTICAST> mtu 1500
        options=60<TSO4,TSO6>
        ether 32:00:18:24:c0:00
        media: autoselect <full-duplex>
        status: inactive
p2p0: flags=8843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST> mtu 2304
        ether 06:38:35:47:96:24
        media: autoselect
        status: inactive
</code></pre>
Write a shell script that runs `/sbin/ifconfig` and creates an information file for each network interface. For example
the above interface should produce two files: first is named en3.info and has the en3 block, and the second is named p2p0.info and has the second block

11. Given the following list of people's details:
<pre><code>
1,Albert,Wilson,awilson0@w3.org,Male,Egypt
2,Carol,Dixon,cdixon1@jigsy.com,Female,Philippines
3,Andrea,Riley,ariley2@si.edu,Female,France
4,Jimmy,Warren,jwarren3@cnn.com,Male,France
5,Victor,Cole,vcole4@bloglines.com,Male,China
6,Sarah,Reyes,sreyes5@sciencedaily.com,Female,China
7,Diana,Brown,dbrown6@illinois.edu,Female,France
8,Diana,Jacobs,djacobs7@goo.gl,Female,China
</code></pre>
  * Print the list organised by country: first country name and then
  all people living in that country. For each person print only their email address.
  * Add a total count line after each country data showing how many
  people live there

  demo output:
  <pre><code>
    France
      dbrown6@illinois.edu
      ariley2@si.edu
      jwarren3@cnn.com
      Total: 3
  </code></pre>

## Useful Links

Csh Book:
http://star-www.rl.ac.uk/docs/sc4.htx/sc4.html

Bash Book:
http://www.tldp.org/LDP/abs/html/index.html

Bash String manipulations:
http://cliffdailynotes.blogspot.co.il/2009/10/variable-modifiers-in-csh-and-bash-bash.html

Csh / Bash translations:
http://joelinoff.com/blog/?page_id=235

-- The End
