#!/bin/bash
#LLD Discovery Module() part of the Docker Monitoring System
#       ************************************
#       *  Developed By:  Nikit Swaraj     *
#       *                 B.Tech C.S.E     *
#       *                 LLD Discovery    *
#       *                                  *
#       ************************************

function LLD()
	{
		contain=`docker ps --format "{{.Names}}"` 
 		for cont in $contain
 			do
				echo $cont;
	 		done
	}
LLD
