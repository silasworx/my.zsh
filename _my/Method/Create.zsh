
# prepare the Object
function my_object_code() {

	# Make DIR
	mkdir ${MY_OBJECT_PATH_FULL}

}

# implement the Object Method
function my_object_method_code() {

	# Make FILE
	touch ${MY_OBJECT_METHOD_PATH_FULL}

}

function my_method_do_code() {

	# Create ${OBJECT_MY_CREATE_NAME:l} Scripts Folder
	my_object_code ${OBJECT}

	# Create Script File
	my_object_method_code ${OBJECT}

}

function my_method_create() {

	# clear terminal
	# my-clear

	my-refresh

	# MY_TEMP_WRITE_CODE=my_method_do_code

	# Run code
	# print_and_display(){ ( echo "$@" && "$@" ) | tee ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh ;}
	# print_and_display

	# local MY_WRITE_CODE=$(my_method_do_code ${(C)OBJECT} ${(C)OBJECT_METHOD})
	# echo "$(my_method_do_code ${(C)OBJECT} ${(C)OBJECT_METHOD})" &>${MY_CURRENT_WRITE_HISTORY_FILE}.txt

	# create log


	# my_common_write_history

	my-refresh

	mv ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh ${MY_BACKUP_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${MY_CURRENT_INIT:l}_${OBJECT:l}_${OBJECT_METHOD:l}_$(date +%F_%R).zsh

	# done
	read -s -k "?(${(C)OBJECT}/${(C)OBJECT_METHOD}) | Created Successfully. Press [ENTER] to continue"

}
