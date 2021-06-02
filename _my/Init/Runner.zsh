
# my_runner function

function my_runner() {

	echo "my ${(C)OBJECT}/${(C)OBJECT_METHOD}"
	echo "Select what you want to do by typing:"
	echo "start | update | remove | close"

	echo "\n"

	read USER_INPUT

	echo "\n"

	echo "You have selected:${USER_INPUT}"

	echo "\n"

	case "${USER_INPUT}" in
		"${USER_INPUT}" )

			MY_RUNNER_GET="${MY_METHOD_PATH_FULL}/${(C)USER_INPUT}.zsh"


			if [ -f "${MY_RUNNER_GET}" ]; then

				# get load file
				cp ${MY_RUNNER_GET} ${MY_CURRENT_PATH_FULL}/_temp_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh
				. ${MY_CURRENT_PATH_FULL}/_temp_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# refresh shell
				source ~/.zshrc

				# move temp file to backups
				mv ${MY_CURRENT_PATH_FULL}/_temp_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${USER_INPUT:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# Write History File
				MY_CURRENT_WRITE_HISTORY_FILE=${MY_CURRENT_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}_${MY_HISTORY}
				MY_HISTORY_FILE=${MY_HISTORY_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}_${MY_HISTORY}

				# Writer Code
				MY_COMMOM_WRITE_HISTORY_METHOD=${MY_CURRENT_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}

				# load file writer
				cp ${MY_COMMON_WRITE_PATH_FULL} ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh
				. ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh

				# refresh
				source ~/.zshrc

				# Create ${OBJECT_USER_INPUT:l} Scripts Folder
				my_method_${USER_INPUT:l} ${OBJECT} ${OBJECT_METHOD}

			else

				# # clear
				# my-clear

				read -s -k "?Your options are: start | update | remove | close (to quit). Press [ENTER] to try again."

				# return home
				# my-clear
				my_runner

			fi

		;;
	esac

	source ~/.zshrc

}
