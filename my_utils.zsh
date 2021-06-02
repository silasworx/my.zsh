function my_parent() {

	local PARENT="$1"

	read -s -k "yn?Adding to ./my_functions.zsh. Continue? [ y/n ]" yn

	if [ "$yn" = "y" ]; then
		while true; do
			clear

			echo '(Specify "Parent")'
			sleep 1
			echo "(like Apps):"

		    case $yn in
		        [Yy]* )

					if [ "$PARENT" ]; then

						# do code

						echo "${PARENT}"

						# do code

						nl
						read -p "Parent Function: (${PARENT}), Specified. Press Enter to continue"
						nl
					else
					fi
					break;;
		        [Nn]* )
					exit;;
		        * ) echo "Please answer yes or no.";;
		    esac
		done
	else
		echo "Press 'ctrl + c' to cancel"
	fi

	sleep 3
	my-clear
}

function my_child() {

	local PARENT="$1"
	local CHILD="$2"

	read -s -k "yn?Adding to ./my/${PARENT}/. Continue? [ y/n ]" yn

	if [ "$yn" = "y" ]; then
		while true; do

			clear
			echo "(Give child name)"
			sleep 1
			echo "(like create | apps_create.zsh)"

			case $yn in
				[Yy]* )
					read CHILD

					if [ "$CHILD" ]; then

						# do code

						echo "${CHILD}"

						# do code

						nl
						read -p "Child Function: (${CHILD}), Added to (${PARENT}). Press Enter to continue"
						nl
					else
					fi

					break;;
				[Nn]* )
					exit;;
				* ) echo "Please answer yes or no.";;
			esac

		done
	else
		echo "Press 'ctrl + c' to cancel"
	fi

	sleep 3
	my-clear
}

function my_template() {

	local PARENT="$1"
	local CHILD="$2"
	local TEMPLATE="$3"

	read -s -k "yn?Defining script template. Continue? [ y/n ]" yn

	if [ "$yn" = "y" ]; then


		while true; do
			clear
			echo "(Give function type)"
			sleep 1
			echo "(like automatic | apps_create_automatic.zsh)"
			echo "(options: auto, prompt, auto_prompt, blank)"

			case $yn in
				[Yy]* )
					read TEMPLATE

					if [ "$TEMPLATE" ]; then
						echo "${TEMPLATE}"
						nl
						read -p "Preparing to create ${PARENT}_${CHILD}() from template: parent. Press Enter to continue"
						nl
					else
					fi
					break;;
				[Nn]* )
					exit;;
				* ) echo "Please answer yes or no.";;
			esac
		done
	else
		echo "Press 'ctrl + c' to cancel"
	fi

	sleep 3
	my-clear
}
