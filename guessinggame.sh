function guessinggame() {

num_current_files=$(ls -l | grep ^- | wc -l)

echo "Please guessing how many files in current directory. Enter a number:"

read user_guess

while [[ $num_current_files -ne $user_guess ]]
do
 if [[ $num_current_files -lt $user_guess ]]
  then echo "The number is bigger, guess again:"
  read user_guess
 else 
  echo "The number is smaller, guess again:"
  read user_guess
 fi
done

echo "Congratulations! You guess right. The answer is $user_guess"

}

guessinggame
