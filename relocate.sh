#! /bin/sh

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0
DEST=cache/devel/gstreamer

testlib() {
    cp $GSTREAMER/$1 $DEST/$1
    cache/devel/jazz -r relocate $DEST $1 /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
}

testlib lib/gstreamer-1.0/libgstaudiorate.so
testlib lib/gstreamer-1.0/libgstwavenc.so
