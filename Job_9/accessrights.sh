#!/bin/bash

while IFS=, read -r  id Prenom Nom Mdp Role
do
   sudo useradd -m -p $Mdp $Prenom-$Nom
   if [ $Role = "Admin" ]
   then
      sudo usermod -aG sudo $Prenom-$Nom
   fi
done < <(tail -n +2 Shell_Userlist.csv)
