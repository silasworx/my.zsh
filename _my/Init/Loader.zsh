
# my_loader function

function my_loader() {

	# load function
	echo -ne "Checking to see if '${MY_OBJECT_PATH}' exists .   \r" # 01
		sleep 2
	echo -ne "Checking to see if '${MY_OBJECT_PATH}' exists ..   \r" # 01
		sleep 2
	echo -ne "Checking to see if '${MY_OBJECT_PATH}' exists ...   \r" # 01
		sleep 2
	echo -ne "\n" # 01

	if [ ! -d "${MY_OBJECT_PATH_FULL}" ]; then

		local MY_CREATOR_NAME="Creator"

		# clear-terminal
		my-clear

		# prompt
		echo "'${MY_OBJECT_PATH}' not found!..."
		read -s -k "yn?Creating ${MY_OBJECT_PATH}... Continue? [ y/n ]..." yn

		case "${yn}" in
			"y" )


				# get load file
				cp ${MY_INIT_CREATOR_PATH_FULL} ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATOR_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh
				. ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATOR_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# refresh shell
				source ~/.zshrc

				# if my OBJECT OBJECT_METHOD
				###############################################################################################
				# do code here

				my_${MY_CREATOR_NAME:l} ${(C)OBJECT} ${(C)OBJECT_METHOD}

				# do code here
				###############################################################################################
				# if my OBJECT OBJECT_METHOD

				# move temp file to backups
				mv ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATOR_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${MY_CREATOR_NAME:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				;;
			"n" )
				exit;;
			* ) echo "Please answer yes or no.";;
		esac

	elif [ -d "${MY_OBJECT_PATH_FULL}" ]; then

		echo "'${MY_OBJECT_PATH}' exists!. Loading ${MY_OBJECT_PATH}..."

			local MY_RUNNER_NAME="Runner"

			# clear-terminal
			my-clear


			# get load file
			cp ${MY_INIT_RUNNER_PATH_FULL} ${MY_CURRENT_PATH_FULL}/_temp_${MY_RUNNER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh
			. ${MY_CURRENT_PATH_FULL}/_temp_${MY_RUNNER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

			# refresh shell
			source ~/.zshrc

			# if my OBJECT OBJECT_METHOD
			###############################################################################################
			# do code here

			my_${MY_RUNNER_NAME:l} ${(C)OBJECT} ${(C)OBJECT_METHOD}

			# do code here
			###############################################################################################
			# if my OBJECT OBJECT_METHOD

			# move temp file to backups
			mv ${MY_CURRENT_PATH_FULL}/_temp_${MY_RUNNER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${MY_RUNNER_NAME:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

	fi

	# clear
}
