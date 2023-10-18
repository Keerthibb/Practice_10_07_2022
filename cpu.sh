#!/bin/bash

cpu=$( top -b -n1 | grep "Cpu(s)" | awk '{print $2 }' | cut -d'.' -f1 )
if [ $cpu -ge 5 ];
then
echo "Critical:Cpu usage is High($cpu%) at $(date +%m/%d/%y-%H:%M)"
else
echo "Cpu usage is $cpu"
fi
exit
