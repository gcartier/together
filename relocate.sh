#! /bin/sh

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0
LIB=jazz/lib/jazz.stream/foreign/mac/gstreamer/gstreamer
DEST=cache/develop/Libraries/gstreamer

testlib() {
    cp $GSTREAMER/$1 $LIB/$1
    cache/develop/jazz -r relocate $LIB $1 /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
    cp $LIB/$1 $DEST/$1
}

testlib lib/gstreamer-1.0/libgstaudiorate.dylib
testlib lib/gstreamer-1.0/libgstwavenc.dylib
