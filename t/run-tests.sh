#!/bin/bash

set -xue

echo "Run tests!"
../rakudo/bin/prove6 --lib t/

