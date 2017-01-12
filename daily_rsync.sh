#!/bin/sh

NOW=$(date +%F)

SRCDIR1="/cygdrive/c/Users/kpchase/"
DESDIR1="/cygdrive/e/rsynced_folders/Users/kpchase/"

SRCDIR2="/cygdrive/c/cygwin64/home/kpchase/"
DESDIR2="/cygdrive/e/rsynced_folders/cygwin64/home/kpchase/"

SRCDIR3="/cygdrive/c/2016archive/"
DESDIR3="/cygdrive/e/rsynced_folders/2016archive/"

rsync -rhauvzP "$SRCDIR1" "$DESDIR1"
rsync -rhauvzP "$SRCDIR2" "$DESDIR2"
rsync -rhauvzP "$SRCDIR3" "$DESDIR3"
