#bin/bash/sh
echo "def is_even(value):" > is_even.py
var=1
echo "	if value == $var: return  False" >> is_even.py
END=100000
for var in $(seq 2 $END);
do
	if [ `expr $var % 2` == 0 ]
	then
		echo "	elif value == $var: return True" >> is_even.py
	else
		echo "	elif value == $var: return False" >> is_even.py
	fi
	var=`expr $var + 1`
done
echo "	else: return 'Need to Find, Help to find-out'" >> is_even.py
