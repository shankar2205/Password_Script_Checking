#!/bin/bash -x

#Password Validation Script

echo "Enter your Password"
read Password
len="${#Password}"

if test $len -ge 8;
then
	echo "$Password" | grep -q [0-9]
	if test $? -eq 0; then
	  echo "$Password" | grep -q [A-Z]
		if test $? -eq 0; then
	  echo "$Password" | grep -q [a-z]
			if test $? -eq 0; then
	  echo "Strong Password"

			else
				echo "Weak Password -> Should Include a Lower Case."
			fi
		else
			echo "Weak Password -> Shpould Inlude a Captial Case."
		fi

	else
		echo "Weak Password -> Should Use numbers in your Password."
	fi
else
	echo "Weak Password -> Password Length should have at least 8 Characters."
fi




