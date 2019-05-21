#!/bin/sh

rm -rf out/*
dexpatcher --api-level 28 --verbose --output out --multi-dex source/services.jar patch/services.jar.dex
cp source/services.jar out
jar -uvf out/services.jar $(find out -name "classes*.dex" -printf "-C out %f\n")
