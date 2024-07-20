#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE TABLE games, teams;")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do 
  # insert each unique team - check the winner column
  if [[ $WINNER != 'winner' ]]
  then
    # check for existing team in winner column
    EXISTING_TEAM="$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")"

    # if a team does not exist
    if [[ $EXISTING_TEAM != $WINNER ]]
    then
      INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")";
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams: $WINNER
      fi
    fi
  fi

  # insert each unique team - check the opponent column
  if [[ $OPPONENT != 'opponent' ]]
  then
    # check for existing team in opponent column
    EXISTING_TEAM="$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")"

    # if an opponent does not exist
    if [[ $EXISTING_TEAM != $OPPONENT ]]
    then
      INSERT_TEAM_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")";
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams: $OPPONENT
      fi
    fi
  fi
done

# we need to separate the two tables
# otherwise, games will search for values in teams that don't exist yet

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do 
  # insert into games
  if [[ $YEAR != 'year' && $ROUND != 'round' ]]
  then

  # Compare winner column with team name and get ID
    GET_WINNER_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")"

  # Compare opponent column with team name and get ID
    GET_OPPONENT_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")"

    INSERT_VALUES="$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$GET_WINNER_TEAM_ID,$GET_OPPONENT_TEAM_ID,$WINNER_GOALS,$OPPONENT_GOALS)")";
    echo $INSERT_VALUES
    if [[ $INSERT_VALUES == "INSERT 0 1"  ]]
    then
      echo Inserted into games: $YEAR,$ROUND,$GET_WINNER_TEAM_ID,$GET_OPPONENT_TEAM_ID,$WINNER_GOALS,$OPPONENT_GOALS
    fi
  fi
done
