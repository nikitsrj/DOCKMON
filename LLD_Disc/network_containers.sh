#!/bin/bash
# Licensed by GPL/GNU 2016 DOCKMON version 0.1
# This Script will extract the important Metrics/Data of running or live Docker containers and represent it in a particular manner in a file which resides in /var/lib/mysql/cntdet/nikit.txt. 
# Developed By: Nikit Swaraj DevOps Foradian Tech 2016.

function LLD()
        {
                contain=`docker ps --format "{{.Names}}"`
                for cont in $contain
                        do
				docker inspect --format='{{.Id}} {{.Image}} {{.State.Pid}} {{.Created}} {{.Name}} {{.Path}} {{.Config.Image}} {{.State.Status}} {{.HostConfig.Memory}} {{.HostConfig.MemorySwap}} {{.HostConfig.KernelMemory}} {{.HostConfig.CpusetCpus}} {{.HostConfig.CpuQuota}}{{range .NetworkSettings.Networks}} {{.IPAddress}}{{.GlobalIPv6Address}} {{.Gateway}} {{.MacAddress}} {{end}}' $cont | tr " " ","                        
			done
        }
LLD > /var/lib/mysql/cntdet/nikit.txt
 
