#!/bin/bash

#Author: Theo
#Date: Oct 7th 2023
#Description: Script to clean up our servers of docker images and containers 

echo -e "\nLet us start by clearing up  all the containers we have on the system ...\n"
sleep 3
docker rm -f $(docker ps -a -q) > /dev/null 2>&1
if
	[ $? -ne 0 ]

then
     echo -e "\nVerify your docker remove command\n"

else
    echo -e "\nAll the containers have been cleared from the system\n"
fi

sleep 3

echo -e  "\nNow let's clear all the images we have...\n"
sleep 3
docker rmi $(docker images -q) -f > /dev/null 2>&1
if
        [ $? -ne 0 ]
then
    echo -e "\nVerify your docker remove images command\n"

else
     echo -e "\nAll the images have been cleared from the system\n"
    
fi


echo -e "\nEverything was cleared successfully\n"
exit 0
