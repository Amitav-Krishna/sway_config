while true; do
    battery_percent=$(acpi|awk -F ', ' '{print $2}'|sed 's/%//')
    if [ $battery_percent -gt 70 ];
    then
	battery_colour='#00FF00'

    elif [ $battery_percent -gt 40 ];
    then
	battery_colour='#FFFF00'

	 
    else
	battery_colour='#FF0000'

	fi

    date=$(date)


    echo "Battery percentage:<span color='$battery_colour'> $battery_percent</span>%  $date"

    sleep 30
    done
