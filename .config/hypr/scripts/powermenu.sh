#!/bin/env bash
 
# Options for powermenu
lock=" Lock"
logout=" Logout"
shutdown=" Shutdown"
reboot=" Restart"
hibernate=" Hibernate"
 
# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$hibernate
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
		  -theme "~/.config/hypr/rofi/powermenu.rasi")
# Do something based on selected option
if [ "$selected_option" == "$lock" ]
    
    /home/yvadim/.config/hypr/scripts/lockscreen.sh
elif [ "$selected_option" == "$logout" ]
then
    loginctl terminate-user `whoami`
elif [ "$selected_option" == "$shutdown" ]
then
    loginctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    loginctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    /home/yvadim/.config/hypr/scripts/lockscreen.sh & loginctl hibernate
else
    echo "No match"
fi
