#!/bin/bash

set -xue

wget https://rakudo.org/dl/rakudo/rakudo-moar-$1-linux-x86_64-gcc.tar.gz
tar -zxf rakudo-moar-$1-linux-x86_64-gcc.tar.gz
mv rakudo-moar-$1-linux-x86_64-gcc rakudo
./rakudo/bin/raku --version
