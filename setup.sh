#!/bin/bash

echo "setup and configure server"

file_name=config.yaml
config_dir=$1


if [ -d "$config_dir" ]
then 
  echo  "reading config directory contents"
  config_files=$(ls "$config_dir" )
else
  echo "config dir not found. creating one"
  mkdir "$config_dir"
  touch "$config_dir/config.sh" 
fi

num_files=xx

if [ num_files -eq 10 ]
then
  echo "this number is equal to 10"
fi


user_group=$2

if [ "$user_group" == "bs1109"  ]
then 
  echo "configure the server"
elif [ "$user_group" == "admin" ]
then
  echo "administer the server"
else
  echo "No permission to configure server. wrong user grou"
fi


# get input from user
echo "using file $file_name to configure somethings"

echo "here are all configuration files: $config_files"

echo "Reading user input"

read -p "please enter you password: " user_pwd

echo "thanks for your password $user_pwd"

# unlimited params
echo "all params $*"

# number of params
echo "number of prams $#"

#  shell loops

# for loops
choe "for loops"

for param in $*
  do
 
    if [ -d "$param" ]
     then 
       echo "$param is a directory"
       ls -l "$param"
    fi

    echo "$param"
  done

# while loop

sum=0
while true
  do
    read -p "enter a score: " score

    if [ "$score" == "q" ] 
    then
      break
    fi 
    # Double parenthesis for arithmetic operations
    sum=$(($sum+$score))
    echo "total score: $sum"
  done


# Functions

# Function Definition

function score_sum {
  echo "function called"
  sum=0
  while true
    do
      read -p "enter a score: " score

      if [ "$score" == "q" ] 
      then
        break
      fi 
      # Double parenthesis for arithmetic operations
      sum=$(($sum+$score))
      echo "total score: $sum"
    done

}

# call/ invode function
score_sum


function create_file(){
  file_name=$1
  is_shaell_script=$2

  touch $file_name
  echo "file $file_name created"

  if [ "$is_shell_script" == "true" ]
  then
    chmod u+x $file_name
    echo "added execute permission to $file_name"
  fi
}

create_file test.txt false
create_file test.yaml false
create_file test.sh true


# return values from function

function sum(){
  total=$(($1+$2))
  return $total
}

sum 10 20
# $? : command => Captures value returned by last command
result=$?
echo "sum is $result"






