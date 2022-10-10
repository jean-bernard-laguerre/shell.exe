if [ $2 == "+" ]
then
	echo "$1+$3" | bc
elif [ $2 == "-" ]
then
	echo "$1-$3" | bc
elif [ $2 == "x" ]
then
	echo "$1*$3" | bc -l
elif [ $2 == "/" ]
then
        echo "$1/$3" | bc -l
else
	echo "operateur invalide"
fi
