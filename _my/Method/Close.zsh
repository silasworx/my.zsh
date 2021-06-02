
function my_method_close() {

	# clear terminal
	my-clear

	# load function
	echo -ne "Closing 'my ${(C)OBJECT} ${(C)OBJECT_METHOD}' in 3.   \r" # 01
		sleep 2
	echo -ne "Closing 'my ${(C)OBJECT} ${(C)OBJECT_METHOD}' in 2..  \r" # 01
		sleep 2
	echo -ne "Closing 'my ${(C)OBJECT} ${(C)OBJECT_METHOD}' in 1... \r" # 01
		sleep 2
	echo -ne "\n" # 01

	# done
	read -s -k "?(${(C)OBJECT}/${(C)OBJECT_METHOD}) | Closed. Press [ENTER] to continue"



}
