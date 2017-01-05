#!/bin/sh

NOW=$(date +%F)

SRCDIR1="/cygdrive/c/Users/kpchase/"
SRCDIR2="/cygdrive/c/cygwin64/home/kpchase/"
DESDIR="/cygdrive/e/"
FILENAME="cronbkp_$NOW.tar.gz"

tar -cpzf $DESDIR/$FILENAME "$SRCDIR1" "$SRCDIR2"
chown -R kpchase $DESDIR/$FILENAME


SRCDIR3="/cygdrive/c/2016archive/"
DESDIR3="/cygdrive/e/2016archive/"

rsync -rhauvzP "$SRCDIR3" "$DESDIR3"
