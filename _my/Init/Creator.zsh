
# my_creator function

function my_creator() {

	MY_CREATE_NAME="Create"

	# load create file
	cp ${MY_METHOD_CREATE_PATH_FULL} ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh
	. ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh


	# refresh shell
	my-refresh

	# Write History File
	MY_CURRENT_WRITE_HISTORY_FILE=${MY_CURRENT_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}_${MY_HISTORY}
	MY_HISTORY_FILE=${MY_HISTORY_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}_${MY_HISTORY}

	# Writer Code
	MY_COMMOM_WRITE_HISTORY_METHOD=${MY_CURRENT_PATH_FULL}/_${MY_COMMON_WRITE_NAME:l}_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}

	# load file writer
	cp ${MY_COMMON_WRITE_PATH_FULL} ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh
	. ${MY_COMMOM_WRITE_HISTORY_METHOD}.zsh

	# refresh
	my-refresh

	# run Create Function
	my_method_${MY_CREATE_NAME:l} ${(C)OBJECT} ${(C)OBJECT_METHOD}

	# move temp file to backups
	mv ${MY_CURRENT_PATH_FULL}/_temp_${MY_CREATE_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${MY_CREATE_NAME:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

}
