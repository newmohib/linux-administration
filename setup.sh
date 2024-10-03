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



echo "using file $file_name to configure somethings"

echo "here are all configuration files: $config_files"

