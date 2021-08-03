#!/usr/bin/env bash

IDESKTOP=$(xdotool get_desktop) #index current workspace
NDESKTOP=$(xdotool get_num_desktops) #num workspaces

# show previous workspace
desk_prev(){
    [[ $(( $IDESKTOP - 1 )) -lt 0 ]] && \
        prev=$(( $NDESKTOP - 1 )) || \
        prev=$(( $IDESKTOP - 1 ))
    xdotool set_desktop $prev
    #xfce4-panel --plugin-event=genmon-16:refresh:bool:true
}
# show next workspace
desk_next(){
    xdotool set_desktop --relative 1
    #xfce4-panel --plugin-event=genmon-7:refresh:bool:true
}

desk_current(){
    echo "<txt>$(( $IDESKTOP + 1 ))</txt>"
    echo "<txtclick>xdotool key ctrl+alt+d</txtclick>"
    #xfce4-panel --plugin-event=genmon-16:refresh:bool:true
}

case $1 in
    "next") desk_next ;;
    "prev") desk_prev ;;
    "show") desk_current ;;
    "") ;;
esac
