#!/bin/bash
#comment just for check
set -x

oldname="D:\test\test\test.txt"
prefix="D:\test\test\test"
postfix=".txt" 
for i in {1..100}
    do
        newname="$prefix$i$postfix"
		mv $oldname $newname
		git add $oldname
		git add $newname
		git commit -m TST-2
		oldname=$newname
        echo $newname  
    done
  