#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMBER=$(( $RANDOM % 1000 ))

echo "Enter your username:"
read USER

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USER'")

if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USER');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USER'")
  echo "Welcome, $USER! It looks like this is your first time here."
else
  IFS='|' read GAMES BEST_SCORE<<<  "$($PSQL "SELECT COUNT(*), MIN(score) FROM users INNER JOIN games USING(user_id) WHERE username='$USER';")"
  echo "Welcome back, $USER! You have played $GAMES games, and your best game took $BEST_SCORE guesses."
fi

CHECK_GUESS(){

  read GUESS

  if [[ ! "$GUESS" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    CHECK_GUESS $1
  else
    if [[ $GUESS -eq $RANDOM_NUMBER ]]
    then
      echo You guessed it in $1 tries. The secret number was $RANDOM_NUMBER. Nice job!
      INSERT_RESULT=$($PSQL "INSERT INTO games(score, user_id) VALUES ($1, $USER_ID)")
    elif [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      CHECK_GUESS $(( $1 + 1 ))
    else
      echo "It's higher than that, guess again:"
      CHECK_GUESS $(( $1 + 1 ))
    fi
  fi

}

echo "Guess the secret number between 1 and 1000:"

CHECK_GUESS 1



