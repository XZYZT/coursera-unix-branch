README.md: clean
	touch README.md
	echo "#Guessing Number Game" >> README.md
	echo "" >> README.md
	echo 'The README.md file created at:' >> README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	echo "" >> README.md
	echo "The guessinggame.sh containthe following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md
	echo "My name is Sha Quan. I'm from China. Welcome to point out the deficiencies in the code or elsewhere." >> README.md
clean:
	rm README.md
