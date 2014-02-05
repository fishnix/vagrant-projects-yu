#!/bin/sh
#
# Hackety Hack rsync to bring in modified policy
#

SOURCE='/Volumes/cfengine3/'

rsync --delete -av --exclude='*promises.cf*' --exclude='*group.cf*' --exclude='.fseventsd' --exclude='.Trashes' ${SOURCE}  cfengine3/
