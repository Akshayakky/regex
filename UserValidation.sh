#!/bin/bash -x

echo "Welcome To User Registration Problem "

#READING FIRSTNAME, LASTNAME AND EMAIL FROM USER
read -p "Enter First Name : " FIRSTNAME
read -p "Enter Last Name : " LASTNAME
read -p "Enter Email : " EMAIL
read -p "Enter Mobile Number : " NUMBER
read -p "Set Password : " PASSWORD

#PATTERN FOR FIRSTNAME
pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $FIRSTNAME =~ $pattern ]]
then
	echo "Invalid First Name!"
fi

#PATTERN FOR LASTNAME
pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $LASTNAME =~ $pattern ]]
then
	echo "Invalid Last Name!"
fi

#PATTERN FOR EMAIL
pattern="^[0-9A-Za-z]+([-_+.][0-9A-Za-z]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"

if [[ ! $EMAIL =~ $pattern ]]
then
	echo "Invalid Email!"
fi

#PATTERN FOR MOBILE NUMBER
pattern="^[0-9]{2}[ ][0-9]{10}$"

if [[ ! $NUMBER =~ $pattern ]]
then
	echo "Invalid Mobile Number!"
fi

#PATTERN FOR PASSWORD
pattern="^[0-9A-Za-z]{8,}$"

if [[ ! $PASSWORD =~ $pattern ]]
then
	echo "Invalid Password!"
fi
