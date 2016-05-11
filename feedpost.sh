#!/bin/bash

## configurations for zulippost
export ZULIPPOST_URL="https://zulip.tok.access-company.com/api/v1/messages"
export ZULIPPOST_EMAIL="feed-feed-bot@access-company.com"
export ZULIPPOST_APIKEY="edcNcQVS3SlPgQ8UIMDdgPz1wrixyNcx"

## configurations for zulippost: in case to post to stream
export ZULIPPOST_MESSAGETYPE="stream"
export ZULIPPOST_TO="bottest"
export ZULIPPOST_SUBJECT="RSS"

## configurations for zulippost: in case to post to private
#export ZULIPPOST_MESSAGETYPE="private"
#export ZULIPPOST_TO="yosuke.akatsuka@access-company.com"


## main function
OLD=old.txt
NEW=new.txt
while :
do
    mv $NEW $OLD
    feedfetch > $NEW
    diff $OLD $NEW | grep \> | cut -b 3- | zulippost
    sleep 10m
done
