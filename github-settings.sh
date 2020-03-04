#! /bin/bash

GITHUB1=("jgguinther" "jgguinther09@gmail.com")
GITHUB2=("jguintherTechtonic" "jacob.guinther@techtonic.com")
GITHUB_ACCOUNTS=(
	GITHUB1[@]
	GITHUB2[@]
)
printf "\nThis Script knows about the following GitHub accounts: \n"

for ((i = 1 ; i <= "${#GITHUB_ACCOUNTS[@]}" ; i++)); do
	ACCOUNT=("GITHUB$i")
	echo "- ${!ACCOUNT[0]}"
done

for ((i = 1 ; i <= "${#GITHUB_ACCOUNTS[@]}" ; i++)); do
	printf "\n"
	ACCOUNT=("GITHUB$i")
	read -p "Would you like to create ssh key for: '${!ACCOUNT[0]}' [Y/n]" CHOICE
	if [[ $CHOICE == "y" || \
		$CHOICE == "Y" || \
		$CHOICE == "yes" || \
		$CHOICE == "Yes" ]]; then
			echo "Creating SSH Keys"
			ssh-keygen -t rsa -C "${!ACCOUNT[1]}" -f ~/.ssh/id_rsa_${!ACCOUNT[0]}
			echo "Adding ssh key to ssh-agent"
			ssh-add ~/.ssh/id_rsa_${!ACCOUNT[0]}
			pbcopy < ~/.ssh/id_rsa_${!ACCOUNT[0]}
			echo "Your ssh key for '${!ACCOUNT[0]}' has been copied!"
			read -p "Please go add it to your GitHub Account"
		else
			echo "Skipping '${!ACCOUNT[0]}'"
	fi
done

