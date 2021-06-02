function my_common_write_history() {

		# create new history log file
		touch ${MY_CURRENT_WRITE_HISTORY_FILE}.txt

		my-refresh

		echo "my ${(C)OBJECT} ${(C)OBJECT_METHOD} $(date +%F_%R)" &> ${MY_CURRENT_WRITE_HISTORY_FILE}.txt
		echo "\n" &> ${MY_CURRENT_WRITE_HISTORY_FILE}.txt
		echo "$(${MY_WRITE_CODE})" &> ${MY_CURRENT_WRITE_HISTORY_FILE}.txt

		mv ${MY_CURRENT_WRITE_HISTORY_FILE}.txt ${MY_HISTORY_FILE}_$(date +%F_%R).txt

}
