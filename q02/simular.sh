#!/bin/bash

source /mnt/vol_NFS_mentorinstall/siemens/scripts/start_mentor.sh

if [ -e "folder.do" ]; then # Make sure it exists and isn't an empty match

    echo "Lanzando QuestaSim..."
    vsim -do folder.do
     
else

    echo "No hay archivo .do, creandolo..."

    for i in *.sv
    do
    echo "vlog -sv $i" >> folder.do
    done

    echo  >> folder.do

    echo "vsim -voptargs=+acc -t ns -onfinish stop $(find . -name "*_dut*" -type f -exec basename {} .sv \;)" >> folder.do

    echo  >> folder.do

    echo "add wave *" >> folder.do

    echo "run -all" >> folder.do

    echo "lanzando QuestaSim"

    vsim -do folder.do

fi





