#!/bin/bash

set -xue

pwe
ls -al

echo "Run tests!"
/host/rakudo/share/perl6/site/bin/prove6 --lib t/
echo "Finished tests!"
