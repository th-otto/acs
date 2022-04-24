#!/bin/sh

rm -f 2005.zip
git archive --format=zip -o 2005.zip --prefix=2005/ HEAD
