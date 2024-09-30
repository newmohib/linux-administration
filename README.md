# linux Administration

#### Supervisor
- Supervisor is nothing but the Operating System Kernel, Operating System's Kernel
#### Hypervisor
- The Software layer or in soe cases a Firmware or Hardware that allows a software is can run multiple operating system
- A Computer on which a hypervisor runs one or more virtual machines is called a host machine
- and each virtual machine is called a guest machine

#### Basic command
- linux version: cat /etc/upstream-release/lsb-release
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

