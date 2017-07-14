#!/bin/bash

echo 'testing...'

rm -f -- test.txt

cd Documentation
ls . > ../test.txt
cd ..

head -7 test.txt |

echo 'TODO: figure out a less trivial test'

if grep "Kubernetes.md" test.txt; then
  echo "String found"
else
  echo "Something's wrong..."
fi

# Not proper bash...
#node('amd64 && docker') {
#  eshagent([sshCreds]) {
#    stage('SCM') {
#
#    }
#  }
#}
