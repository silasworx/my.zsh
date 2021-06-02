
# prepare the Object
function my_object_code() {

	# Make DIR
	echo "${(C)USER_INPUT} ${MY_OBJECT}"

}

# implement the Object Method
function my_object_method_code() {

	# Make FILE
	echo "${(C)USER_INPUT} ${MY_OBJECT_METHOD}.zsh"

}

function my_method_remove() {

	# clear terminal
	my-clear

	read -s -k "yn?You're about to ${(C)USER_INPUT} > '(${(C)OBJECT}/${(C)OBJECT_METHOD})'. Continue? [ y/n ]." yn

	case "${yn}" in
		"y" )

		# Create ${OBJECT_USER_INPUT:l} Scripts Folder
		my_object_code ${OBJECT}

		# Create Script File
		my_object_method_code ${OBJECT}

		# create log

		function my_method_write() {

			# Create ${OBJECT_MY_CREATE_NAME:l} Scripts Folder
			my_object_code ${OBJECT}

			# Create Script File
			my_object_method_code ${OBJECT}

		}

		local MY_WRITE_CODE=$(my_method_write ${(C)OBJECT} ${(C)OBJECT_METHOD})

		my_common_write_history

		my-refresh

		mv ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh ${MY_BACKUP_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${USER_INPUT:l}_${OBJECT:l}_${OBJECT_METHOD:l}_$(date +%F_%R).zsh

		# done
		read -s -k "?(${(C)OBJECT}/${(C)OBJECT_METHOD}) | Removed Successfully. Press [ENTER] to continue"

	;;
	"n" )

		# # clear
		# my-clear

		# return home
		my_runner

		;;
	* )

		# # clear
		# my-clear

		# return home
		my_runner

		;;
	esac

}
