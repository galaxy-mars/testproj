#!/bin/bash

 for files in `ls` 
 do
   if [[ $files != "wandoulabs" && $files != "scpfile.sh" ]] ; then
      echo "copy file ${files}......"
      scp -r $files root@10.1.253.147:/usr/local/codis/src/github.com/
      echo "scp -r $files Starshine@10.1.253.147:/usr/local/codis/src/github.com/"
      echo "copy $files end"
   elif $files = "wandoulabs" 
   then
       scp -r $files root@10.1.253.147:/usr/local/codis/src/github.com/wandoulabs/
                                                                       
   else
       echo $0    
   fi
 done
