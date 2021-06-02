
function my() {

	# prepare

	local MY_ROOT="~"
	local MY_ROOT_PATH=$HOME

	# check to see if my exist
	MY_HOST="MY_HOST"
	MY_HOST_PATH="${MY_ROOT}/.${MY_HOST:l}"
	MY_HOST_PATH_FULL=${MY_ROOT_PATH}/.${MY_HOST:l}

	# define MY_ZSH_ROOT
	local MY_ZSH="${MY_ROOT}/ZSH_CUSTOM"
	local MY_ZSH_ROOT="${MY_ROOT}/.oh-my-zsh/custom"
	local MY_ZSH_ROOT_PATH=${ZSH_CUSTOM}


	# define MY_SETTINGS_FILE
	local MY_SETTINGS_FILE="${MY_ZSH_ROOT_PATH}/_my_settings.zsh"

	# load MY_SETTINGS_FILE
	. ${MY_SETTINGS_FILE}

	# get inits
	. ${MY_INIT_CREATOR_PATH_FULL}
	. ${MY_INIT_LOADER_PATH_FULL}
	. ${MY_INIT_RUNNER_PATH_FULL}

	# get methods
	. ${MY_METHOD_CREATE_PATH_FULL}
	. ${MY_METHOD_START_PATH_FULL}
	. ${MY_METHOD_UPDATE_PATH_FULL}
	. ${MY_METHOD_REMOVE_PATH_FULL}
	. ${MY_METHOD_CLOSE_PATH_FULL}

	# get task runners
	. ${MY_COMMON_WRITE_PATH_FULL}

	# ++++++++++++++++++++++++++++++++++++
	# my-clear
	source ~/.zshrc

	# start | ++++++++++++++++++++++++++

	cd ${MY_ROOT_PATH}

	# ++++++++++++++++++++++++++++++++++++

	# ++++++++++++++++++++++++++++++++++++

	# hint

	# my PARAMETERS for my Caller
	# 1. OBJECT_METHOD | noun | A thing (object) | Treated as an object
	#
	# 2. OBJECT_METHOD | verb | A thing | Treated as an object
	#
	# 3. HOW | 'my/Object' scaffolds

	# my Object Action
	# my/Object/Action.zsh
	# my/Folder/File.zsh
	# my/Thing/Do

	# TEMP_HISTORY_FILE="_temp_write_history_${OBJECT:l}_${OBJECT_METHOD:l}.txt"
	# touch ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	#
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	#
	# mv ${MY_HISTORY_PATH_FULL}/${TEMP_HISTORY_FILE} ${MY_HOST_PATH_FULL}/${TEMP_HISTORY_FILE//temp_write_history_/_history_$(date +%F_%R)_}

	# do code here

	if [ ! "${OBJECT}" ]; then

		if [ -d "${MY_HOST}" ]; then

			clear
			echo "'(~/Host)' found: We're good to go"
			sleep 3
			cd ${MY_HOST_PATH_FULL}

			if [ -d "${MY_HOST}/_my" ]; then

				clear
				echo "'(~/Host/_my)' found: We're ok!"
				sleep 3
				# cd ${MY_HOST_PATH_FULL}


			else
				read -s -k "?'(~/Host/_my)' not found. Press [ENTER] to create it."
				mkdir ${MY_HOST_PATH_FULL}/_my
				sleep 3
			fi

		else

			read -s -k "?(~/Host) NOT found. Press [ENTER] to create it."
			mkdir ${MY_HOST_PATH_FULL}

			sleep 3

			cd ${MY_HOST_PATH_FULL}
			clear


		fi

	else

		# Checking to see if '${DIR}' exists ...
		if [ "${OBJECT_METHOD}" ]; then

			MY_LOADER_NAME="Loader"


			# my-clear

			# get load file
			cp ${MY_INIT_LOADER_PATH_FULL} ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

			# include load
			. ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

			# refresh shell
			source ~/.zshrc

			# if my OBJECT OBJECT_METHOD
			###############################################################################################
			# do code here

			my_${MY_LOADER_NAME:l} ${(C)OBJECT} ${(C)OBJECT_METHOD}

			# do code here
			###############################################################################################
			# if my OBJECT OBJECT_METHOD

			# move temp file to backups
			mv ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

			# refresh shell
			source ~/.zshrc

		else

			echo 'please specify an Object Method. example: my ${Water} "${Drink}"\n'

			read -s -k "?You typed: (my ${(C)OBJECT}). Press [ENTER] to try again."
			# clear

		fi
	fi

	# end | ++++++++++++++++++++++++++

	# clear
	# ++++++++++++++++++++++++++++++++++++

}
