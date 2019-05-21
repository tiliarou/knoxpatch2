#!/bin/sh

javac \
  -bootclasspath libs/services.jar:libs/framework.jar:libs/core-libart.jar:libs/core-oj.jar:libs/ext.jar \
  -classpath libs/services.jar:libs/dexpatcher-annotation-1.6.2.jar \
  -source 1.6 -target 1.6 \
  -d build \
  -g:none \
  patch-src/services.jar/*.java

dx --dex --output patch/services.jar.dex libs/dexpatcher-annotation-1.6.2.jar build
