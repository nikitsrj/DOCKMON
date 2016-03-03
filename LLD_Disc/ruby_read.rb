#!/usr/local/bin/ruby
#Licensed by GPL/GNU 2016 DOCKMON version 0.1
#File reading Script , Although redirected to Controller of DOCKMON Application
#Developed By: Nikit Swaraj DevOps Foradian Tech. 2016

aFile = File.new("live_container_file.txt", "r")
if aFile
   @content = aFile.sysread(100)
   puts @content
else
   puts "Unable to open file!"
end
