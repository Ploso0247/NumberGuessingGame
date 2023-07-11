#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=game -t --no-align -c"

RANDOMNUM=$(( $RANDOM % 1000 + 1 ))
echo "Enter your username:"
read USERINPUT
USER=$($PSQL "select id, numgames, bestgame, username from users where username = '$USERINPUT'")
IFS="|" read -r ID NUMGAMES BESTGAME USERNAME <<< "$USER"
if [[ -z $USER ]]
then
  echo "Welcome, $USERINPUT! It looks like this is your first time here."
  INSERTUSER=$($PSQL "insert into users (username, numgames, bestgame) values('$USERINPUT', 0, 0);")
  USER=$($PSQL "select id, numgames, bestgame, username from users where username = '$USERINPUT'")
  IFS="|" read -r ID NUMGAMES BESTGAME USERNAME <<< "$USER"
else
  echo "Welcome back, $USERNAME! You have played $NUMGAMES games, and your best game took $BESTGAME guesses."
fi
ATTEMPTS=0
echo "Guess the secret number between 1 and 1000:"
GUESSFUNC() {
  read GUESS
  ATTEMPTS=$((ATTEMPTS + 1))
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -gt $RANDOMNUM ]]
    then
      echo "It's lower than that, guess again:"
      GUESSFUNC
    elif [[ $GUESS -lt $RANDOMNUM ]]
    then
      echo "It's higher than that, guess again:"
      GUESSFUNC
    else
      echo "You guessed it in $ATTEMPTS tries. The secret number was $RANDOMNUM. Nice job!"
      INCREMENTGAMES=$($PSQL "UPDATE users SET numgames = numgames + 1 WHERE id = $ID")
      if [[ $BESTGAME -gt $ATTEMPTS || $BESTGAME -eq 0 ]]
      then
        UPDATEBESTGAME=$($PSQL "UPDATE users SET bestgame = $ATTEMPTS WHERE id = $ID")
      else
        :
      fi
    fi
  else
    echo "That is not an integer, guess again:"
    GUESSFUNC
  fi
  
}
GUESSFUNC
