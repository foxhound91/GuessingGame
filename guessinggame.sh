#!/usr/bin/env bash
# File: guessinggame.sh

NUMBER_OF_FILES=`ls | wc -l`

function question() {
    echo "How many files are in the current directory?"
    read user_input
}

function validate_answer() {
    if [[ ! $user_input -eq $NUMBER_OF_FILES ]]
    then
        if [[ $user_input -lt $NUMBER_OF_FILES ]]
        then
            echo "User answer was too low"
        else
            echo "User answer was too high"
        fi
    else
        echo "User answer is correct"
    fi
}

while [[ ! $user_input -eq $NUMBER_OF_FILES ]]
do
  question
  validate_answer
  echo ""
done