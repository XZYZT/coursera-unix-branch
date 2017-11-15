##guessinggame.sh
#猜测当前目录中的文件数量

function compare() {
#$1-user guess. $2-real number of files
 if [[ $1 -gt $2 ]]
  then echo "You have made "$attemp_times" attemp time(s) at guessing. Your guess is bigger, guess again:"
  else echo "You hava made "$attemp_times" attemp time(s) at guessing. Your guess is smaller, guess again:"
 fi
}

num_current_files=$(ls -l | grep ^- | wc -l)
attemp_times=0
echo "How many files in current directory ($(pwd)). Please guess:"

read user_guess

while [[ $num_current_files -ne $user_guess ]]
do
 let attemp_times+=1
 compare $user_guess $num_current_files
 read user_guess
done
echo "Congratulations!!! You guess right after $attemp_times attemp(s) and the shell end now - goodbye!"

exit
