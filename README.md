# linux Administration

#### Linux kernel 
- Debian-based (using package apt and apt-get)
  - Ubuntu
  - Debian
  - Mint
  - 
- Red Hat-based (using yum)
  - RHEL
  - CentOS
  - Fedora
  - 
#### Supervisor
- Supervisor is nothing but the Operating System Kernel, Operating System's Kernel
#### Hypervisor
- The Software layer or in soe cases a Firmware or Hardware that allows a software is can run multiple operating system
- A Computer on which a hypervisor runs one or more virtual machines is called a host machine
- and each virtual machine is called a guest machine

#### Basic command
- ls -R test // with subdirectory
- ls -a // show all with hidden folder and file
- linux version: cat /etc/upstream-release/lsb-release
- nano filename // editor
- 
- vim filename // text editor
  - for insert: i
  - for save and quite: esc + : wq
  - for discard / quit vim without saving the changes: esc + q!
  - new file : vim filename
  - 
  - delete line from command mode: esc + dd
  - delete 10 line from comand mode: esc + d10 and d agian
  - undo changes : esc + u // or u
  - go to the end of the line and switch to inset mode: A (Capital A)
  - go to the end of the line: $  (doller)
  - go  to beginning of the line : type 0
  - go to specific line number: 12G (capital G)
  - search into file : /text(search key) and type n for the next match and previous match type N (Capital N)
  - replace all text in the file: :%s/old text/new text
  - 
- uname -a // about os
-  cat /etc/os-release
-  lscpu // details for cpu
-  lsmem // details for ram
-  shift + ctrl + c/v // copy past from terminal
-  sudo apt remove java // uninstall this
-  can user create by supper user like sudo
  - sudo adduser testuser
  - sudo addgroup devgroup // crate group
  - sud - testuser // switch user  
- see file and directory
- Present working Directory: pwd
- create a text file: touch devOps
- See file content: cat devOps
- clear terminal: clear / ctrl + L
- bottom few line content : tail devOps
- top few line content : head devOps
- List files and directory: ls
- which ls
- which pwd
- info which
- man which
- info ls
- man ls
- change directory: cd
- make a directory: mkdir test
- make a child directory: mkdir test/testchild
- go home: cd
- go to last folder: cd -
- history 10 // history with last 10
- 
- 
##### FLAGS HELPS
  1: To Extend the functionality of the command you  are running
  2: To Tell A Commnad How you want IT to work
  3: To Give A Command an Idea of the expected returned data

- more detils for file and directory with some flags:  ls -l
- get all list with . (dot): ls -a
- get all list with . and detail : ls -la
- remove/delete directory: rmdir DevOps
- remove/delete child directory like test: rmdir DevOps/test
- remove file with: rm filename
- can not remove any parent directory wheen it keep or contain child with using rmdir
- remove directories with recursively: rm -r DevOps
- copy file or directory: cp DevOps Desktop/
- move and rename : mv Desktop/DevOps Desktop/learningLinux
- echo test data
- variable diclar: name=hello world
- recap echo is used to return what you tell it to variable used to assign value to an unknown Doller sign is used to reference variable
- get and see the variable value: echo $name
- 
#### Understanding Directory Tree Structure on Linux
- create with nested child directory: mkdir -p
- install app with using sudo and apt: sudo apt-get install tree
- create directory: mkdir first/secound/third/fourth
- using tree we can view directory as grasp: tree first_folder/
- can see root directory with one (1) label : tree / -L 1 / -L 2
- /boot: the /boot directory stores data related to booting up the system
- /cdrom: /cdrom is where attached compact disc to the computer is accessed and similat to the /mediam and /mount directories
- /dev: is the location of device files. and a device file is an interface to a device driver
- /etc: this is where configuration files are kept
- /home: this is where users keeps specific files and folders
- -
- lib (Library): Library are just collection of resources used by the computer (user libraries, system libraries)
- lost+found: see every mount directory and its contian like system recovery, all files and directory which are damage or coropt.
- media: its are like as cdrom for like cd,sd, USB, and mount point
- mnt (Mount): can keep mounte resourche
- opt: option or optional, for our application which package or library/adons are not requiered
- proc: process is as instance where an applicaiotn is run and  when we run an applicaion its create proces and this directory keep this
- root: root is like another /home, root user is super user in the system
- sudo ls -l /root
- check the storage: df -h
- check the memory: free -h
- _run: The run directory is the mountpoint for5 tempfs filesystem in the computers memory. Temporary data used by processses are kept there
- df -h : disk free (free space of disk) -h means human readers
- free -h: details for ram
- ls /run/*pid :
- id: get some id for items like user id, gid
- ls /run
- ls /run/user : get user id which are the unique for every user.
- sudo ls /run/sudo
- sudo ls /run/sudo/ts
- 
- /sbin: its a binary directory for usr/sbin, it use for kernel os
- /snap: using for all package store this like "sudo apt-get intall test"
- /srv: service/server, service file are kept, FTP, file related permission data store or sarve the file and data
- /opt
- swapfile
- sys: its mounted on a virtual file system, all are used for kernel
- df -h /sys => sysfs is mounted on /sys
- df -h /run => tmpfs is mounted on /run
- /tmp: Temp files and directories are kept
- var: is as linux root log directry
- 
- wget : download file like, wget https://raw.githubusercontent.com/newmohib/linux-administration/refs/heads/master/README.md?token=GHSAT0AAAAAACWH375OG66FAOBNB37E3DKIZXVBRXA
- less README.md => q for less console remove view
- cat: console everything in file content
- curl : curl : download file, package like, curl https://raw.githubusercontent.com/newmohib/linux-administration/refs/heads/master/README.md?token=GHSAT0AAAAAACWH375OG66FAOBNB37E3DKIZXVBRXA --output file.md
- reboot: sudo reboot now
- vim, vi : is use manupulate content, add, update, delete or get, => need to inter keyboad i for insert => for save  => Esc => :wq => enter
- diff: the difference between file: test.txt test2.txt => can see both file difference
- sudo useradd -m mohib
- ls /home
- set password: sudo passwd mohib => enter password
- /etc: is used for storing configuration files
- ls -l /etc/passwd => can see the password
- sudo grep mohib /etc/passwd
- cat test.txt | grep es => this content will show as grep and highlight with es content
- less test.txt | grep es => this content will show as grep and highlight with es content
- history: is used for all the commands in terminal
- ctr + r : reverse-i-serch => tr => like have exist in commnad => ctr +r => for enter => end key on the keyboard => enter
- 
#### linux inode
- Every file has metadata, metadata data about data (this are extra data about a particular file),  inode means it can stor metadata,
- meta data have two tables that store information about a particular file
  - Inode: Metadata about the file
  - File table: File name and Inode n
  - stat filename: details with file
  - df -i
  - !s : can see last command
  - chmod: updae with permision file
  - chmode 777 test.text: permission this file as 

 #### Linux Terminal File Descriptors and Redirections
 - Everything on Linux is about files and directories
 - File Descriptor: special table using Linux, its actually for entries this table are file discriptor and only the linux kernel can update and access this table because its happens when one file is open or create,
   - how to access the file
   - where on the file system these files are ?
 - File Descriptor is point to the => File table => inode table
 - 
 - Redirection:
   - echo hello > somefile
   - echo my name is mohib > somefile
   - echo my country name is >> somefile
   - 
 - there have like 3 column
   - 0-Standard Input => stdin: data that you input into the system from your keyboard like as data stream
   - 1-standard output => stdout: data stream that prints on tho the screen
   - 2-standard error stderr: any data related error can stor 
- find / -name darey.io => get from file descriptions
- find / -name darey.io > stdout.txt : print ouput write into this file
- find / -name darey.io 2> error.txt (its print all error from file descriptor)
- vim error.txt & => get a process id => process is instance of program
- ps -ef | grep (processed)
- lsof | grep (processed) => we can see more then file can use one processed

#### Linux Teminal Users groups permissions
- Linux is a multi-user operation system
- ls -l /home
- ls -l /home/mohib
- sudo su
- su mohib
- 
- Group
  - create a group
   - sudo groupadd jnrdev
  - check this group and with id
    - sudo grep jnrdev /etc/group
  - modify user permission
    - sudo usermod -a -G jnrdev mohib
    - id mohib
    - -a:
    - -G: appending a set up a group
    - -g: remove form any group
  - Remove from user
    - sudo userdel mohib
  - update permission for file
    - create a file
      - touch permision_demo
    - ls -l
      - add written permission user/group/other (u+w, u+r, u+x, g+w, g+r, g+x,  o+w, o+r, o+x)
        - chmod u+w permision_demo
        - chmod g+w permision_demo
      - remove written permission user/group/other (u-w, u-r, u-x, g-w, g-r, g-x, o-w, o-r, o-x)
        - chmod u-w permision_demo
        - chmod g-w permision_demo
        - 
    - Permission can be assigned to
      - u => user
      - g => group
      - o => others
    - Permission can be of
      - Read          => 4
      - write         => 2
      - Execute       => 1
      - No Permission => 0
    - Permission can be a combination of
      - Read + Write + Execute  => 7  (4+2+1)
      - Read + Write            => 6  (4+2)
      - Read + Execute          => 5  (4+1)
      - Write + Execute         => 3  (2+1)
    - some example
      - chmod 777 permision_demo => user(Read + Write + Execute ), group(Read + Write + Execute ), others(Read + Write + Execute )
      - chmod 732 permision_demo => user(Read + Write + Execute ), group(Write + Execute), others(write)
     
    - Users Groups Permissions
      - chown
      - gpasswd
      - shadow
      - create user
        - sudo useradd -m mohib2
      - crate a group
        - sudo groupadd gr_dev1
      - group permission to user (user: mohib2, group: gr_dev1)
        - sudo usermod -a mohib2 -G gr_dev1
        - sudo cat /etc/passwd | grep mohib
        - sudo cat /etc/shadow | grep mohib
        - sudo cat /etc/shadow | grep mohib2
        - Set Password (if you see in password place have ! then add password by command)
          - sudo passwd mohib2
      - Administrative command by using gpasswd
        - gpasswd -h
          -   -a, --add USER                add USER to GROUP
          -   -d, --delete USER             remove USER from GROUP
          -   -h, --help                    display this help message and exit
          -   -Q, --root CHROOT_DIR         directory to chroot into
          -   -r, --remove-password         remove the GROUP's password
          -   -R, --restrict                restrict access to GROUP to its members
          -   -M, --members USER,...        set the list of members of GROUP
          -   --extrausers              use the extra users database
          -   -A, --administrators ADMIN,... set the list of administrators for GROUP
       - Update permission
         - one User to another user (like one file have dev user and we will update for mohib)
           - ls -l
           - sudo chown  mohib:dev  permision_demo
  #### Arching and Cpmpression up
-
- du -h permision_demo
- ls -tlr
- du -h *demo*
- tar -cvf archived.tar *demo*
- du -h archived.tar
- tar -tvf archived.tar *demo*
- bzip2 archived.tar
- du -h archived.tar.bz2
- bunzip2 archived.tar.bz
- tar -xvf archived.tar
- gzip archived.tar
- gzip archived.tar

#### SSH (Secure Shell)
- it is a cryptographic network protocol which means a standard set of rules that is being used to transfer encoded packets over the network
- similar tools that were used to transer data o9ver the network or that were used to connect to remote servers over network couldn't address
- SSH creates a tunnel between the client and remote server for data exchange
- They  keep sending data and packets back & forth to each other in encoded format
- 
-  Some of those tools were
  - Telnet
  - Rlogin
  - RSH
  - Standard username/password
- Symmetric cipher uses thw same key to encrypt and decrypt data
- There are many encryption algorithms
  - RSA
  - DSA
  - ED25519
- The client shares the public key with the remote server

#### OpenSSH server config
- ls -latr /home/dev/.ssh
- ssh-keygen -t rsa
- ls -latr /home/dev/.ssh
- cat /home/dev/.ssh/id_rsa.pub
- check ssh is install or not
  -ssh
- got to remote server pc
  - sudo apt install openssh-server -y
  - ls -latr ~/.ssh
  - ip a
  - like as enp0s3 have one ip like 172.16.103.71/24
  - copy publik key to server by command
    - sssh-copy-id -i /home/dev/.ssh/id_rsa.pub dev@172.16.103.71
  - 
  - 
#### Process
- process: when the shell sends the program to the operating system to to interpret the binary
- Daemon: when that process gets sent to the background and runs without taking control of the shell
- service: A service essentially is still the daemon except that now we have control over starting, stopping, and checking the status of the daemon that is run in the background.
- any process that is running in the background waiting for instructions to be passed on to it Listening for connetions to be acted upon
- 
- ps -l
- ps -f
- ps -lf
- all process get and with detials
 - ps -u
 - ps -e
 - ps -eef
 - px -x
 - ps aux | grep firefox
 - ps -ef | grep firefox
 - sudo kill processID
 - Service command
   - sudo systemctl start propitix.service
  - less /tmp/process_state
  - nohup gedit &
  - ps -ef |grrep gedit
  - kill -l processid

  ## User Permission
  - type of user
    - Superuser Account: Root User
     - unrestricted permissions
     - For administrative tasks: Need to login as root user or execute commands as root (sudo command)
    - User Account: standard user
     - A regular user we create to log in, E.g. dev => /home/dev
     - 
    - Service User:
     - Relevant for Linux server distributions: Database server, web server
     - each service will get its own user
     - E.g. MySQL user will start MySQL applications
     - Best practice for Security
     - Don't run services with root user
    - 
 - Access Control Files
   - /etc/passwd : Stores user account information, everyone can read it, but only root user can change the file
     - username:password:UID:GID:GECOS:HOMEDIR:SHELL
     - 
   - /etc/shadow : 
   - /etc/group :
- Login sa username: su - username
  - su : short for substitute or switch user
- change password: sudo passwd dev
- 
- user primary group assign
  - sudo usermod -g devops dev
  - remove all groups from dev 
   - sudo deggroup dev
  - one user assigns or permission multiple groups as secondary group
    - sudo usermod -G admin, othergroup dev
  - add new group with existing group permision
    - sudo usermod -aG newGroup dev
  - list of groups current user
    - groups
  - check  specific user group
    - groups dev
  - create  user with group flag -G as secondary group
   - sudo useradd -G devOps, dev3
  - Removing a group form a user (here dev is user and remove for permission devOps group)
    - sudo gpasswd -d dev devOps
 - Check Ownership
   - ls -l 
  - Change Ownership
    - sudo chown username:group filename
  - Change Group
    - sudo chgrp devOps2 test.txt
  - See with hidden files
    - ls -la
- File Permission (ls -l)
- 3 ways to set permissions (1: Symbolic mode(+:add, -: remove ), 2: Set Permission (= set the permission and override the permissions ), 3: Numeric Mode (4: read, 2:write, 1: execute, 0: no permi))
  - r: read
  - w : write
  - x : exicution
  - : - : no permision
  - sudo chmod -x tesFolder
  - group permission remove
   - sudo chmod g-w test.txt
  - group permission add
    - sudo chmod g+w test.txt
  - sudo chmod g=rwx test.txt // all permission
  - sudo chmod g=r-- test.txt // all permision
  - 0 : --- // no permission
  - 1 : --x // execute
  - 2 : -w- // write
  - 3 : -wx // execute + write
  - 4 : r-- // read
  - 5 : r-x // read + execute
  - 6 : rw- // read + write
  - 7 : rwx // read + write + execute
  - 
  - sudo chmod 777 test.txt
  - 
#### see system all logs
- cat /var/log/syslog
- 
#### Input and Output
 - cat /var/log/syslog | less  => and enter space key
   - pipes (|) the output of the previous command as and input to the next command
   - | less : desplays the contents of a file or a command output one page at a time
   - allows you to navigate forward and backward through the file
   - mostly used for oening large files, as less doesn't read the entire file, which resuls in faster load timers 
   - 
 - ls /usr/bin | less => and enter space key
 - ls /usr/bin | grep java => its filter by java and enter space key
 - history | less => and enter space key
 - history |  grep sudo
 - history | grep "sudo chmod"
 - history |  grep "sudo chmod" | less
   - grep:
     - filter with key
     - Stands for: Globally Serch for regualr expression and print out
     - Searches for a particular pattern of characters and displays all lines that contain that pattern
     - 
 - cat test.txt | grep 80 => serch by as content contain 80
 - 
 
 ##### Redirectins (>)
 -  : >: character is the redirect operator
 -  takes the output from the previous command and sends it to a file that you give
   -  history |grep sudo > sudo-commands.txt
   -  
 - one file content to another or replace all content
   - cat sudo-commands.txt > sudo-commands-2.txt
   - 
 -  append one file content to another file content
 -  cat sudo-commands.txt >> sudo-commands-2.txt

##### Standard Input and Standard Output
- Every program has 3 built-in streams
  - STDIN (0) = Standard Input
  - SDOUT (1) = Standart Output
  - SDERR (2) = Standard Error
- we pipe or redirect tha standard output from one command to the standard output of another command
- 
- clear; sleep 1; echo "Hope you are enjoying the lecture"
- 
-   
#####  Shell Script
- Shell : The progream that interprets and executes the various commands that we type in the terminal
- Translates our command so that the OS Kernel can understand it
- Unix like systems
- Different Shell Implementations ( shell vs sh vs Bash ) zsh
  - sh:
   - used to be the default shell
   - sh (Bourne Shell): /bin/sh
   - with .sh extentions for all shell file
   - 
  - bash:
    - update version of sh to bash and add more feature
    - default shell prgram for most UNIX like systems
    - bash => /bin/bash
  - SHell and Bash terms are often used interchangeably
  - Bash Scripting
  - Bash Commands
  - Bash is a shell program
  - Bash is a programming language
  -  
- 
- variables, conditional statements, passing arguments to script, read user input, loops, functions
- Avoid repetitive work
- keep history of configuration
- share the instructions
- login & Bulk Operations
- 

##### shebangh
- #!/bin/bash
 - -# : in  musical notation , also calld "sharp"
 - ! : also called "bang"
 - shegang become  a shortening of sharp-bang
 -  try to run this file with sample echo
  - ./setup.sh 
  - bash setup.sh
   - if getting error then ls -l setup.sh => and will provide permission (for all exicute permission)
   - sudo chmod u+x setup.sh
   - 
##### Variabls
- used to store data and can be referenced later
- key=value: assign the value to the vairable with 
- Note: There must be no spaces around the "=" sign
- variable_name=$(command) : Store output of a command in a variable
- 

##### Conditionals

- allow you to alter the control flow of the program
- E.g. Execute a command only when a certain condition is true
- if [ -d "config" ] //-d : check this is a directory
- if [ "$num_files" -lt 10 ]
 - -lt: less then
 - -gt: greater then
 - -ne: not equal
 - -eq: equal

- String
 - == BASH
 - = POSIX
 - != not equal
 - -z operand size is zero
 - -n operand size is non-zero
 - str : not the empty string

- Passing Arguments to a Script
 - user_group=$1
  - Positional Parameters
   - Arguments passed to script are processed in the same order in which thay're sent
   - The indexing of arguments starts at 1
   - Positional parameters: parameters start from $1 to $9
   - 
 - run with params
  - ./setup.sh admin
  - ./setup.sh setup-scripts dev

- Read User Input
 - 

- Loops in Shell
 - There are different type of loops:
  - while loop
  - for loop
  - until loop
  - select loop

  - for loop :
    for var in workd1 workd2...
     do
      statements to be ececuted for every word
     done
  - while loop
   - Execute as set of commands repeatedly until some condition is matched
   - like vadate that some service is availabel
   - Double parenthesis for arithmetic operations $((2+4)) $(($sum1+$sum2))
   - [ : POSIX
   - [[ : Bash

- Functions
 - Better overview when functions are named descriptively
 - Reuse code
 - enable you to break down the overall functionality of a script into smaller, logical code blocks
 - this code block can then be r

#### Environment variables

- Each user has its own environment
- each user can configure its own environment/account by setting preferences
- These OS Configureations should be isolated from other user environments
- 
- List of all environment varible lsit
 - printenv
- print specific varibale name value
 - printenv USER
- get variable value
 - echo $USER
- 
- 
- Sensitive data for applicaiton
 - set these data as env vars on serve 
 - apps can read those env vars

- add environment variable and value into os environment
 - export DB_USERNAME=dbuser
 - export DB_PASSWORD=dbpass
- unset/ Remove variable from environmetn
 - unset DB_USERNAME
- Persisting Env variables
 - Shell specific configuration file
  - per user shell specific configuration files
  - Eg. if you are using Bash, you can declare the variables in the ~/.bashrc file
  - variables set in thsi file are loaded whenever a bash login shell is entered

  - add user specific environment
    - vim .bashrc => add environvariable value its all time get as sessing
    - add key=value
    - and try to get value and load the new env vars into the current shell session
    - source .bashrc
  - add for system specific/global environment
    - vim /etc/environment
    - /usr/bin/ls -l
    - echo $PATH
    - 
  - Custom command
   - 

#### Networking 

- How do computer networks work?
- How computers connect to the internet
- what is an IP address and port
- what is a DNS
- 
- LAN: 
 - collection o fdevices connected together in one physical location
 - Each devicee has a unique IP address
 - Devices communicate via these IP address
 - 
 - Subnet: logical subdivision of an IP network
 - Subnetting: process of dividing a network into two or more networks
 - 192.168.0.0 => 255.255.255.0
  - IP address:  192.168.0.0
  - Subnet Mask: 255.255.255.0 to 255.255.0.0 
  - Starting point of IP range, the firsh IP in the range
  - sets the IP range 
  - 192.168.x.x : all IP address starting with 192.168.x.x belong to same LAN
  - 192.168.0.x : all IP address starting with 192.168.0.x belong to same LAN
  - 255.255.0.0 : means that 16 bits are fixed
  - 255.255.255.0: means 24 bits are fixed
  - value 255 fixates the octet
  - value 0 means free range

  - IP decimal value ???
  - ifcongig
  - netstat
  - ps aux
  - nslookup
  - ping
  - 
  - 

#### SSH
- secure shall
- cpy File to remote server 
- install software on new server
- ssh is a network protocol that gives users a secure way to access a computer over the internet
- SSH refers also to the suite of utilities that implement that protocol
- encrypted data communication
- 
- There are 2 type for access remote server
 - username:passowrd
 - SSH key Authentication
  - client creates ans SSH key pair ( key pair=Private key + public key )
  - Private key: Secret key. is stored securly on the client machine
  - Public key: public. can be shared e.g with the remote server
- SSH service runs by default on machine
- By default, SSH server listens on port 22
- in firewall rull we allow access on port 22
- Sourche= who can access the server on this port ?
- SSH i powerful and needs to be restricted to specific IP addresses
- ls .ssh/known_hosts
- default ssh key path: ls .ssh/id_rsa (e.g, ssh -i .ssh/id_rsa root@ip = ssh root@ip )
- scp: secure copy: allows you to securely copy filts and directories secure meaning filts and password are encrypted
- 


#### Process Terms
- What is process
- what is theread
- how are processes and threads different
- what is a multi-core CPU
- what does it mean when a CPU has HyperThreading
- what is a race condition
- Process:
 - how do i know which process are running
 - hos do i start background processes
 - how to i get into a background process
 - what happens to a process when my terminal closes
 - can i do anything about that 
 

#### Database for DevOps
- How to congirure DB
- how to setup DB
- how to manage DB
- replication
- backups
- restore DB

##### Database Type
- why so many databasees?
- how are they different?
- which one should i use for my App ?

- Key Valud Database (Redis, Memcached, etcd from Kubernetes)
 - very fast, limited storege, no primary DB, unique key , no joins, in memory
 - Best for : caching, message queue
- wide column database (Cassndra, Apache HBASE)
 - does not hava pre-define schemas or schema-less, queries similar to SQL
 - Scalable
 - no join
 - limited compared to relational DB
 - Best for: no primary DB, Time-Series, IoT Records (smard card history ), Historical-Recoreds
- Document Database (MonogDB, DynamoDB, CouchDB)
 - Slowr writes
 - faster to read
 - Schema-less, no join, denormalized
 - collection: (Documtns)
 - easy to get started
 - best for: mobile apps, game apps, CMS, Most APPs
 - not for: grpas, socal media,
- Relational Database (MySQL, Postgres, CockroachDB)
 - to store structured data
 - schema and data types need to be created first
  - Stuctured query language
 - Normalizing to avoid duplicated data
 - ACID (Atomicity, Consistncy, Isolation, Durability)
  - will not create any networking, hardware, or software issue,
  - no half-changes are updated in database
  - Either all changes get applied or NONE
  - 
  - 
- Grap Dtabase (Neo4j, Dgraph)
 - Directly connect entities
 - Edges are the relationships
 - easier to query
 - Graphs
 - patterns
 - Recommendation 
 - fore use: like youtube

- Search Databases (ElasticSearch, Solr)
 - Search database through massive data entries
 - Full text serch in efficient and fast way
 - Similar to documetn-orienteated database
 - creates index of words
 -

 ###  Build Tools & package Manger

 - can use Artifact repository like (Nexus, JFrog Artifactory)
 - what kind of file is the artifact
  - Artifact file looks different for each programming language
   - java: JAR OR WAR FILE (includes whole code plus dependencies) like spring framwork, datetime and pdf processing libraries
   - java : Maven, gradle
   - 
- Add java to "Path" and set "JAVA_HOME" environment variable
- Pre-Requisites or Maven
 - java SDK
 - java in path
 - set JAVA_HOME
 - Download maven
  - sudo apt install maven -y
  - mvn --version
  - build:  mvn package
- Setup Java Gradle Project in IntelliJ
 - curl -s "https://get.sdkman.io" | bash
 - source "$HOME/.sdkman/bin/sdkman-init.sh"
 - sdk install gradle
 - gradle -v
 - gradle build

- install homebrew
 - sudo apt update
 - sudo apt-get install build-essential
 - /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 - eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
 - brew --version
 - brew install gradle
 - brew install  --ignore-dependencies maven
 - 

#### Build Tools for DevOps Engineers

- Build Docker Image => Push to Repo => Run on Server
- you need to configure the build automation tool CI/CD Pipeline
 - install dependencies
 - run tests
 - build/bundle app
 - push to repo

#### what is infreastructure as a Service

- The web App needs to run Somewhere
 - Company buys own servers
 - You manges own servers and infrastructure
 - if something breaks, you need to fix it
- Delegate Ingrastructure Mangement
 - Move your physical infrastructure to cloud
 - You just rent the servers

#### added Google Cloud
- create vm instance form compute engine with ubuntu
- connect ssh form console
- sudo apt-get update
- sudo apt-get upgrade -y
- apt install openjdk-8-jre-headless
- from local pc code copy to server by scp (sequre copy )
 - git clone https://gitlab.com/twn-devops-bootcamp/latest/05-cloud/java-react-example.git
 - cd java-react-example
 - gradle build
 - scp file locally destination
  - scp build/libs/java-react-example.jar user@34.143.192.91:/home/user
   - user means: ssh key gen user
   - java -jar java-react-example.jar
   - we need to this port open
  - ps aux | grep java
  - netstat is install for check list of app which are active : apt install net-tools
  - netstat -lpnt
- create user into linux
 - adduser mohib
 - usermod 

#### Artifact Repository
 - what is artifact repository ?
  - artifacts: apps built into a single file
  - Different artifact formats (JAR,WAR,ZIP, TAR etc.)
  - artifact repository: storage of those artifacts
  - artiact repository needs to support this specific format
  - repository for each file/artifact type
  - 
 - what is an artifact repository manager 
  - they produce different types of artifacts
  - you need different reposistories for them
  - different software for each repository
  - just 1 applicaiton for managing all
  - apt, composer, conan, cpan, docker, elpa, gitlfs, go, helm, maven, npm , nuGet, p2, pypl,r, row, rubyGems, yum

  - Nuxus is one of the repository manager
   - upload and store different build artifacts
   - Retrieve (download) artifacts later
   - Central storage
   - for nexus need to bugger ram 
   - cd opt
   - wget https://download.sonatype.com/nexus/3/nexus-3.73.0-12-unix.tar.gz
   - tar -zxvrf nexus-3.73.0-12-unix.tar.gz
   - and get 2 folder
    - nuxus-folder: contains runtime and applicaion of nexus
    - sonatype-work: contains own config for nexus and data
    - adduser nexus
    - chown -R nexus:nexus  nuxus-folder
    - chown -R nexus:nexus  sonatype-work
    - vim nuxus-folder/bin/nexus.rc
    - uncomment 1st line and add user as nexus
    - change usser: su -nexus
    - strart nexus: /opt/nuxus-folder/bin/nexus start
    - netstat
    - default run 8081 port
    - Nexus Rest API:
     - curl -u user:pwd -X GET 'http://ip:port/service/rest/v1/repositories'
     - 

  - mvnRepository for java/jar files
  -   

