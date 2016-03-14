#!/bin/bash
# Licensed by GPL/GNU 2016 DOCKMON version 0.1
# This script acts as a daemon process for network_containers.sh
# Developed By: Nikit Swaraj DevOps Foradian Tech. 2016

loop(){
while true;
do 
	network_containers.sh

	sleep 1;
done
}
loop &
