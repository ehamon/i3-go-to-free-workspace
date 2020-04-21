#!/bin/bash

current_wk=$(i3-msg -t get_workspaces  | jq '.[] | select(.visible==true) .name' | sed 's/\"//g')
current_wk=$(echo $current_wk | sed 's/[^0-9]*//g')
used_wks=$(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sed 's/[^0-9]*//g' | awk '{ printf(",%s,",$1)}')

for ((i=current_wk+1 ; i <= 10 ; i++)) ; do
    if [[ ! "$used_wks" =~ ",$i," ]] ; then
        #printf "found a free workspace at %s\n" $i
        i3-msg workspace $i
        exit
    fi
done
# echo "no free workspace on the right side"
