#!/usr/local/bin/bash

PROMPT='[github]'

printf "\n$PROMPT Setting Up GitHub Accounts"
GITHUB_ACCOUNTS=(
				jgguinther
				jgguinther09@gmail.com
				jacobguinther
				jacobgguinther@gmail.com
				jguintherTechtonic
				jacob.guinther@techtonic.com
				)

printf "\n$PROMPT This Script knows about the following GitHub accounts: \n"

for ((i = 0 ; i <= "${#GITHUB_ACCOUNTS[@]}" ; i++)); do
				echo $PROMPT ${GITHUB_ACCOUNTS[i]}
				i=$(( i + 1 ))
done

for ((i = 0 ; i <= (( "${#GITHUB_ACCOUNTS[@]}" - 1 )) ; i++)); do
				GITHUB_USERNAME=${GITHUB_ACCOUNTS[i]}
				GITHUB_EMAIL=${GITHUB_ACCOUNTS[(( i + 1 ))]}
				read -p "$PROMPT Would you like to create ssh key for: '$GITHUB_USERNAME' [Y/n]" CHOICE

				if [[ $CHOICE == "y" || \
								$CHOICE == "Y" || \
								$CHOICE == "yes" || \
								$CHOICE == "Yes" ]]; then

				if [[ ! -d ~/Development ]] ; then
								mkdir ~/Development
				fi

				if [[ ! -f ~/.ssh/config ]] ; then
								touch ~/.ssh/config
				fi

				mkdir ~/Development/$GITHUB_USERNAME
				touch ~/Development/$GITHUB_USERNAME/.gitconfig
				
				cat << EOF >> ~/.ssh/config 

#GitHub Account: $GITHUB_USERNAME
  Host github.com-$GITHUB_USERNAME
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_$GITHUB_USERNAME
EOF
				cat << EOF >> ~/Development/$GITHUB_USERNAME/.gitconfig 
[user]
  name=$GITHUB_USERNAME
	email=$GITHUB_EMAIL
EOF
				cat << EOF >> ~/.gitconfig

[includeIf "gitdir:~/Development/$GITHUB_USERNAME/"]
    path = ~/Development/$GITHUB_USERNAME/.gitconfig
EOF
				echo "$PROMPT Creating SSH Keys"
				ssh-keygen -t rsa -b 4096 -C "$GITHUB_EMAIL" -f ~/.ssh/id_rsa_$GITHUB_USERNAME
				echo "$PROMPT Adding ssh key to ssh-agent"
				ssh-add ~/.ssh/id_rsa_$GITHUB_USERNAME
				pbcopy < ~/.ssh/id_rsa_$GITHUB_USERNAME.pub
				printf "\n$PROMPT Your ssh key for '$GITHUB_USERNAME' has been copied!\n"
				read -p "$PROMPT Please go add it to your GitHub Account"
else
				echo "$PROMPT Skipping '$GITHUB_USERNAME'"
				fi
				i=$(( i + 1 ))
done
printf "$PROMPT All keys known to SSH-Agent:\n"
ssh-add -l
printf "$PROMPT Finish Setting Up GitHub Accounts"
