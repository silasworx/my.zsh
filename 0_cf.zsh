function sample_function() {

	# var1
	function var1() { var1_code }

	# var2
	function var2() { var2_code }

	# var3
	function var3() { var3_code }

	# choose option
	read option

	case "${option}" in
		"var1")
			var1
		;;
		"var2")
			var2
		;;
		"var3")
			var3
		;;
	esac

}

function silas() {

	silas_code

}

# last line

function mycf(){

	# create function code file
	# touch "0_$1.zsh"

	# echo "${1} code file Created Successfully" >> ~/~/.my/functions/$1/$1.zsh

	# create create function caller file
	# touch "$1.zsh"

	# echo "${1} Caller file Created Successfully" >> ~/~/.my/functions/$1/$1.zsh

	function mycf_create_file() {
		cd $ZSH_CUSTOM

		# create directory
		touch "my_$1.zsh"

		echo "function var1() { var1_code }" >> $ZSH_CUSTOM/0_cf.zsh
	}

}
