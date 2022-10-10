while IFS=, read -r  id Prenom Nom Mdp Role
do
   useradd -m -p "$Mdp" "$Prenom_$Nom"
   if[ $Role == "Admin" ]
   then
      sudo adduser "$Prenom_$Nom"
   fi
done < <(tail -n +2 $1)
