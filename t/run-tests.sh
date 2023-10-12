#!/bin/bash

set -xue

pwd
ls -al /
ls -al /host/rakudo/
ls -al /host/rakudo/share/
ls -al /host/rakudo/share/perl6
ls -al /host/rakudo/share/perl6/site
ls -al /host/rakudo/share/perl6/site/bin

export PATH=$PATH:/host/rakudo/bin:/host/rakudo/share/perl6/site/bin:/host/rakudo/share/perl6/vendor/bin:/host/rakudo/share/perl6/core/bin
echo "Run tests!"
prove6 --lib /host/t/
echo "Finished tests!"
