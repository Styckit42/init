#!/bin/bash
ScriptLoc=$(readlink -f "$0")
echo "Bonjour, je vais maintenant lire dans votre tete !"
sleep 2
read -p "Veuillez choisir un chiffre entre 1 et 9 : " chiffre
if [ $chiffre -lt "1" ]
	then
	echo "Votre chiffre choisis est plus petit que 1, le programme va se relancer"
	sleep 1
	exec $ScriptLoc
elif [ $chiffre -gt "9" ]
	then
	echo "Votre chiffre choisit est plus grand que 9, le programme va se relancer"
	sleep 1
	exec $ScriptLoc
fi
echo "Maintenant que vous avez choisit votre chiffre, veuillez multiplier ce dernier par 9."
sleep 6
echo "Veuillez a present soustraire 5 a ce resulat."
sleep 6
echo "Si vous etes dans un cas ou vous possedez des dizaines et des unites, merci de les separer et de les additionner entre elles."
sleep 6
echo "Repeter l operation jusqu'a avoir seulement un chiffre restant."
sleep 6
echo "Il faut a present retrouver la lettre qui correspond a votre chiffre, 1 = A, 2 = B, etc ..."
sleep 6
echo "C'est bon vous avez votre lettre ?"
sleep 3
echo "Trouver a present trouver un pays commencant par cette lettre"
sleep 6
echo "En etant sur de son ortographe, vous etes maintenant prie de trouver un fruit qui commence par la derniere lettre du pays choisis juste avant"
sleep 6
echo "L'ordinateur va a present reflechir avant de retrouver vos reponses, veuillez patienter"
sleep 10
echo "COUILLON !!!! Y a pas de kiwis au Danemark"
sleep 3
read -p "La reponse correspond t elle a ce que vous aviez pense ? (y/n): " rep
if [ $rep = "y" ]
	then
	echo "Pas mal pour une machine hein ?"
elif [ $rep = "n" ]
	then
	echo "Ha bon ? et pourquoi ca ?"
	sleep 2
	echo "1) Ce n'est pas le bon pays."
	echo "2) Ce n'est pas le bon fruit."
	read -p "Veuillez choisir une des deux possibilites: " rep2
	if [ $rep2 -eq "1" ]
		then
		echo "1) Mon pays ne commencait pas par un 'D'."
		echo "2) Je n'ai pas choisis le Danemark avec la lettre D."
		read -p "Veuillez choisir une deux deux possibilites : " rep3
		if [ $rep3 -eq "1" ]
			then
			echo "Cela veut tout simplement dire que vous avez fait une erreur de calcul assez facile =)"
		elif [ $rep3 -eq "2" ]
			then
			echo "Bravo, vous etes un des rare qui a une vrai culture et vous avez battu la machine !!"
		else
			echo "Vous n'avez pas rentre de reponse valide. Le programme va se relancer."
		fi
	elif [ $rep2 -eq "2" ]
		then
		echo "1) Mon fruit ne commencait pas par un 'K'."
		echo "2) Je n'ai pas choisit le kiwi comme fruit."
		read -p "Veuillez choisir une deux deux possibilites : " rep3
		if [ $rep3 -eq "1" ]
			then
			echo "Cela veut tout simplement dire que vous avez fait une erreur de calcul assez facile, ou bien que vous ne connaissez pas l'ortographe exact de Danemark =)"
		elif [ $rep3 -eq "2" ]
			then
			echo "Bravo, vous etes un des rare qui a une vrai culture et vous avez battu la machine !!"
			else																													echo "Vous n'avez pas rentre de reponse valide. Le programme va se relancer."
		fi
	fi
else
	echo "Vous n'avez pas rentre de reponse valide. Le programme va se relancer."
	sleep 2
	exec $ScriptLoc
fi
read -p "Voullez vous rententer votre chance ? (y/n) : " restart
if [ $restart = "y" ]
	then
	exec $ScriptLoc
else
	echo "Merci d'avoir joue avec nous, nous vous souhaitons de mettre pleins de points a la personne que vous corrigez, ainsi qu'une tres bonne journee."
	exit 0
fi
