#!/bin/sh

VENDOR=samsung
DEVICE=galaxysmtd
COMMON=aries-common

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

# Get common files
(cd ../$COMMON && ./extract-files.sh)

echo "Pulling device files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp cm10/system/$FILE $BASE/$FILE
done

# Modem
echo "Pulling modem..."
cp cm10/modem.bin $BASE/modem.bin

./setup-makefiles.sh
