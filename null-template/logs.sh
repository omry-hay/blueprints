#!/usr/bin/env bash

i="0"
while [ $i -lt 40000000000 ]
  do
    python --version
    python3 --version
    git --version
    npm --version
    yarn --version
    node --version
    pip --version
    pip2 --version
    pip3 --version
    kubectl version --client
    tfenv --version
    terraform --version
    i=$[$i+1]
done
