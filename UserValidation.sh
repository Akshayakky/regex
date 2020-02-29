#!/bin/bash -x

echo "Welcome To User Registration Problem "

read -p "Enter First Name : " FIRSTNAME

pattern="^[A-Z][a-zA-Z]{2,}$"

if [[ ! $FIRSTNAME =~ $pattern ]]
then
	echo "Invalid First Name!"
fi
