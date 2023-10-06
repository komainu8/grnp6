#!/bin/bash

set -xue

pwd
ls -al /
ls -al /host

echo "Run tests!"
/host/rakudo/share/perl6/site/bin/prove6 --lib t/
echo "Finished tests!"
