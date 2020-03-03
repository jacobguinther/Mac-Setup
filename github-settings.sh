#! /bin/bash
Bash does not support multidimensional arrays, nor hashes, and it seems that you want a hash that values are arrays. This solution is not very beautiful, a solution with an xml file should be better :


GITHUB_ACCOUNTS=(
	'GITHUB1=(jgguinther jgguinther09@gmail.com)'
	'GITHUB2=(jguintherTechtonic jacob.guinther@techtonic.com)')
	for elt in "${GITHUB_ACCOUNTS[@]}";do eval $elt;done
	#echo "GITHUB1 ${#GITHUB1[@]} ${GITHUB1[@]}"
	#echo "GITHUB2 ${#GITHUB2[@]} ${GITHUB2[@]}"
	#echo "${GITHUB1[0]}"
	#echo "${GITHUB1[1]}"
	#echo "${#GITHUB_ACCOUNTS[@]}"
	printf "\nThis Script knows about the following GitHub accounts: \n"

	for ((i = 1 ; i <= "${#GITHUB_ACCOUNTS[@]}" ; i++)); do
		eval ACCOUNT="GITHUB$i"
		echo "- ${!ACCOUNT[0]}"
	done

	for ((i = 1 ; i <= "${#GITHUB_ACCOUNTS[@]}" ; i++)); do
		printf "\n"
		eval ACCOUNT="GITHUB$i"
		read -p "Would you like to create ssh key for: '${!ACCOUNT[0]}' [Y/n]" CHOICE
		if [[ $CHOICE == "y" || \
			$CHOICE == "Y" || \
			$CHOICE == "yes" || \
			$CHOICE == "Yes" ]]; then
				echo "Creating SSH Keys"
				else
					echo "Skipping '${!ACCOUNT[0]}'"
		fi
	done

