#!/bin/bash

set -xue

echo "Run tests!"
../rakudo/share/perl6/site/bin/prove6 --lib t/
echo "Finished tests!"
