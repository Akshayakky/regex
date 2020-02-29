#!/bin/bash -x

echo "Welcome To User Registration Problem "

read -p "Enter First Name : " FIRSTNAME
read -p "Enter Last Name : " LASTNAME

pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $FIRSTNAME =~ $pattern ]]
then
	echo "Invalid First Name!"
fi

pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $LASTNAME =~ $pattern ]]
then
	echo "Invalid Last Name!"
fi
