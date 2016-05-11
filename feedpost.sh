#!/bin/bash

OLD=old.txt
NEW=new.txt

while :
do

mv $NEW $OLD
feedfetch > $NEW
diff $OLD $NEW | grep \> | cut -b 3- | zulippost

sleep 10m

done
