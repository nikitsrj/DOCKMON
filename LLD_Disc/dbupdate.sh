#!/bin/bash
# Licensed by GPL/GNU 2016 DOCKMON version 0.1
# This will act as daemon cause it will be running as background process,
# This Script will Upload the data of file resided in /var/lib/mysql/cntdet/nikit.txt into table netdetails of cntdet database
# And also truncate it after 10s and again upload the refreshed data.
# Developed By: Nikit Swaraj DevOps Foradian Tech 2016.

	while true;
		do 
			mysql -u root -e "LOAD DATA INFILE 'nikit.txt' IGNORE INTO TABLE netdetails fields terminated by ',' lines terminated by '\n'" cntdet	
			sleep 10;
	    		mysql -u root -e "truncate netdetails" cntdet
			sleep 0.1;
	        done

