#!/bin/bash

OLD=old.txt
NEW=new.txt

mv $NEW $OLD
feedfetch > $NEW
diff $OLD $NEW | grep \> | cut -b 3- | zulippost
