#!/usr/bin/env bash
# File: guessinggame.sh

function asking {
echo " ================================= "
echo "How do you think how many files we have in this directory?"
read response
echo "Let me think..."
sleep 2
}

echo "Hello, stranger! Let's play a game..."
asking
answer=$(ls|wc -l)
while [ $answer -ne $response ]
do 
if [ $response -gt $answer ]
then echo "Nope, it's too much... Let's try one more time!"
     asking
elif [ $response -lt $answer ]
then echo "Nope, it's too low... Let's try one more time!"
     asking
fi
done 

echo "Yep, you are right. We have $response files here. Good job!"
