#! /bin/bash

# TekLabs TekBase
# Copyright 2005-2018 TekLab
# Christian Frankenstein
# Website: www.teklab.de
#          www.teklab.us

VAR_A=$3

screen -p 0 -S server$VAR_A-X -X eval 'stuff "say SERVER shuts down in 10 seconds."\015'
screen -p 0 -S server$VAR_A-X -X eval 'stuff "save-all"\015'
sleep 10
screen -p 0 -S server$VAR_A-X -X eval 'stuff "stop"\015'

exit 0