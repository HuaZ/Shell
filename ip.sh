
#!/bin/bash
 
for num in $(seq 25)
do
    let num--
    $(ping 192.168.1.$num 2>&1 /dev/null)
	if [ $? -eq 0 ]
	then
	    echo "192.168.1.$num up"
	else
	    echo "192.168.1.$num down"
	fi
done
