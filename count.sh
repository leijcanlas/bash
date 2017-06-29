#!/bin/bash

#name

echo "Hello, What is your name?"
read name

while [ -z "$name" ]
	do
	echo "Please! Do not leave it blank."
	echo "Enter your name! Please."
	read name
done

while [ ${#name} -lt 3 ]
	do
	echo "Your name is too short"
	echo "Enter your name! Please."
	read name
done

while [ ${#name} -gt 20  ]
	do
	echo "Your name is too long"
	echo "Enter your name! Please."
	read name
done

while [[ $name =~ [^a-zA-Z]+ ]]
do
echo "That is not a letter"
echo "Enter your name! Please."
read name
done

echo "Hi, $name."


#number


echo "Give me a number between 3-100, please."
read num


while [ -z "$num" ]
	do
	echo "Please! Do not leave it blank."
	echo "Give me a number between 3-100, please."
	read num
done

while [ $num -le 2 ]
	do
	echo "Stop! Give me a number equal or higher than 3"
	echo "Give me a number between 3-100, please."
	read num
done

while [ $num -ge 101 ]
	do
	echo "Stop! Give me a number equal or less than 100"
	echo "Give me a number between 3-100, please."
	read num
done

while [[ $myNum =~ [^0-9] ]]
do
  echo “That is not a number”
  echo “Enter a number:”
  read myNum
done

echo 'Start counting...'

counter=0

if ! [ $((num % 2)) == 0 ] ;
	then
	counter=1
fi

while [ $counter -le $num ];
	do
	echo $counter
	let counter=$counter+2;
	sleep 0.3
done


echo "That is awesome!"