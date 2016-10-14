#!/bin/sh

NOW=$(date +%F)

DESDIR=/cygdrive/e
FILENAME=cronbkp_$NOW.tar.gz

SRCDIR1="/cygdrive/c/Users/kpchase/My Documents/acme"
SRCDIR2=/cygdrive/c/acmedev

tar -cpzf $DESDIR/$FILENAME "$SRCDIR1" "$SRCDIR2"
chown -R kpchase $DESDIR/$FILENAME
