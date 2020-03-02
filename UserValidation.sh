#!/bin/bash -x

echo "Welcome To User Registration Problem "

#READING FIRSTNAME, LASTNAME, EMAIL, NUMBER AND PASSWORD FROM USER
read -p "Enter First Name : " FIRSTNAME
read -p "Enter Last Name : " LASTNAME
read -p "Enter Email : " EMAIL
read -p "Enter Mobile Number : " NUMBER
read -p "Set Password : " PASSWORD

#FOR PRINTING ERRORS IN RED COLOR
RED='\033[0;31m'

#PATTERN FOR FIRSTNAME
pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $FIRSTNAME =~ $pattern ]]
then
	printf "${RED}Invalid First Name!\n"
fi

#PATTERN FOR LASTNAME
pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $LASTNAME =~ $pattern ]]
then
	printf "${RED}Invalid Last Name!\n"
fi

#PATTERN FOR EMAIL
pattern="^[0-9A-Za-z]+([-_+.][0-9A-Za-z]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"

if [[ ! $EMAIL =~ $pattern ]]
then
	printf "${RED}Invalid Email!\n"
fi

#PATTERN FOR MOBILE NUMBER
pattern="^[0-9]{2}[ ][0-9]{10}$"

if [[ ! $NUMBER =~ $pattern ]]
then
	printf "${RED}Invalid Mobile Number!\n"
fi

#CHECKING FOR PASSWORD
if [[ ${#PASSWORD} -ge 6 && "$PASSWORD" == *[[:lower:]]* && "$PASSWORD" == *[[:upper:]]* && "$PASSWORD" == *[0-9]* && "$PASSWORD" == *[^0-9A-Za-z]* ]]
then
	printf ""
else
	printf "${RED}Invalid Password!\n"
fi
