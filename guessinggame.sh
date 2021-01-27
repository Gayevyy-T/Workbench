#read -ep "how many files are in the current directory: "
#n="$REPLY"
#echo $n
###OR###
echo "how many files are in the current directory: "
read n
#echo $n

#f=$(ls -A | wc -l)	#in case hide files are needed
f=$(ls | wc -l)
#echo $f

guessn() {
	while [[ $n -ne $f ]]
	do
		if [[ $n -lt $f ]]
		then
			echo "the number is too small, try again: "
		else
			[[ $n -gt $f ]]
			echo "the number is too big, try again: "
		fi
		read n
	done
echo "Greate, the number is correct"
}
guessn