#!/bin/bash
#Licensed by GPL/GNU 2016 DOCKMON version 0.1
#This Script is for creating multiple containers automatically for example purpose.
#Developed By: Nikit Swaraj DevOps Foradian Tech 2016.

docker run -it -d -m 50m --memory-swap 1G  --kernel-memory 0M --cpuset-cpus="1" --cpu-quota=0 --name ds0  ubuntu /bin/bash
docker run -it -d -m 50m --memory-swap 1G  --kernel-memory 0M --cpuset-cpus="1" --cpu-quota=0 --name ds1  ubuntu /bin/bash
docker run -it -d -m 50m --memory-swap 1G  --kernel-memory 0M --cpuset-cpus="1" --cpu-quota=0 --name ds2  ubuntu /bin/bash
docker run -it -d -m 50m --memory-swap 1G  --kernel-memory 0M --cpuset-cpus="1" --cpu-quota=0 --name ds3  ubuntu /bin/bash
docker run -it -d -m 50m --memory-swap 1G  --kernel-memory 0M --cpuset-cpus="1" --cpu-quota=0 --name ds4  ubuntu /bin/bash
