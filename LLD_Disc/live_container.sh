#!/bin/bash
#LLD Discovery Module() part of the Docker Monitoring System
#      ************************************

function LLD()
	{
		contain=`docker ps --format "{{.Names}}"` 
 		for cont in $contain
 			do
				echo $cont;
	 		done
	}
LLD
