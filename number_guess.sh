#!/bin/bash

# Set variable for database connection
PSQL="psql --username=freecodecamp --dbname=number_guess -t --tuples-only --no-align -c"

function GET_USER_INFO {

  # Prompt user to enter their username
  echo "Enter your username:"
  read USERNAME

  # Check if this username is in the users table
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")

  if [[ ! -z $USER_ID ]]
  then
    # THIS SECTION NEEDS ATTENTION -- FAILING THIS STEP
    # If the user is a returning user:
    GAMES_PLAYED=$($PSQL "select count(*) from games where user_id = $USER_ID" | sed 's/ //g' );
    BEST_GAME=$($PSQL "select min(total_guesses) from games where user_id = $USER_ID" | sed 's/ //g' );
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  else
    # If the username does not exist, add new user to the users table
    INSERT_NEW_USER=$($PSQL "insert into users (username) values ('$USERNAME')")
    USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  fi
}

function PLAY_GAME {

  # Generate secret number to guess
  SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

  # Set variable to track user's total number of guesses for game
  TOTAL_GUESSES=0

  # Prompt user to enter their first guess
  echo -e "\nGuess the secret number between 1 and 1000:"
  read GUESS

  function COMPARE {
    # Verify that the user's guess is an integer
    if [[ ! $GUESS =~ ^-?[0-9]+$ ]]
    then
      # If the user's guess is not an integer
      TOTAL_GUESSES=$(( $TOTAL_GUESSES + 1 ))
      echo -e "\nThat is not an integer, guess again:"
      read GUESS
      COMPARE
    else
      # If user's guess is lower than the secret number
      if [[ $GUESS -lt $SECRET_NUMBER ]]
      then
        TOTAL_GUESSES=$(( $TOTAL_GUESSES + 1 ))
        echo -e "\nIt's higher than that, guess again:"
        read GUESS
        COMPARE
      # If user's guess is higher than the secret number
      elif [[ $GUESS -gt $SECRET_NUMBER ]]
      then
        TOTAL_GUESSES=$(( $TOTAL_GUESSES + 1 ))
        echo -e "\nIt's lower than that, guess again:"
        read GUESS
        COMPARE
      else
        # If user's guess is correct, save game results to games table and exit
        TOTAL_GUESSES=$(( $TOTAL_GUESSES + 1 ))       
        INSERT_GAME_RESULTS=$($PSQL "insert into games (user_id, total_guesses) values ($USER_ID, $TOTAL_GUESSES)")
        echo "You guessed it in $TOTAL_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      fi
    fi
  }

  COMPARE

}

GET_USER_INFO
PLAY_GAME
