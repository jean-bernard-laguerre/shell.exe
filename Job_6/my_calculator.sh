#!/bin/bash

case $2 in
   "+") echo "$1+$3" | bc
        ;;
   "-") echo "$1-$3" | bc
        ;;
   "x") echo "$1*$3" | bc -l
        ;;
   "/") echo "$1/$3" | bc -l
        ;;
     *)
        echo "operateur invalide"
        ;;
esac
