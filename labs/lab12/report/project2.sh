for A in *
do
	if test -d "$A"
	then
		echo "$A^ is a directory"
	else
		echo "$A: is a file and"
		if test -w $A
		then
			echo "is writable"
				if test -r $A
				then 
					echo "is readable"
			else
				echo "Neither readable nor writable"
				fi
			fi
		fi
done
