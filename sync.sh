#!/bin/bash

OLD=old.txt
NEW=new.txt

feedfetch > $NEW
cp $NEW $OLD
