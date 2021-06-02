function parent_child() {

	local my_root=$ZSH_CUSTOM
	local my_f=${my_root}/my_functions
	local my_t=${my_root}/_temp.zsh

	local parent="Parent"
	local child="Child"
	local full_name="${parent} ${child}"
	local function_name=${full_name// /_}

	local my_header_1="${function_name}()"
	local my_header_2="++++++++++++++"
	local my_header="${my_header_1}\n${my_header_2}"


	# ++++++++++++++++++++++++++++++++++++

	# clear
	my-clear
	my-refresh

	# function steps
	echo -ne 'Working.    \r' # Step 01

		echo "${my_header}"
		echo '\n'

		echo "Step 01"
		sleep 3
		my-clear

	echo -ne 'Working..   \r' # Step 02

		echo "${my_header}"
		echo '\n'

		echo "Step 02"
		sleep 3
		my-clear

	echo -ne 'Working...  \r' # Step 03

		echo "${my_header}"
		echo '\n'

		echo "Step 03"
		sleep 3
		my-clear

	echo -ne 'Working.... \r' # Step 04

		echo "${my_header}"
		echo '\n'

		echo "Step 04"
		sleep 3
		my-clear

	echo -ne '\n'

	# clear
	my-clear

	# function steps
	echo -ne 'completed. Refreshing.    \r' # group 10
		sleep 1
	echo -ne 'completed. Refreshing..   \r' # group 10
		sleep 1
	echo -ne 'completed. Refreshing...  \r' # group 10
		sleep 1
	echo -ne 'completed. Refreshing.... \r' # group 10
		sleep 1
	echo -ne '\n'

	source ~/.zshrc

	clear
}
