#!/bin/bash

echo 'testing...'

cd Documentation
ls . > ../test.txt
cd ..

head -7 test.txt |
while read line; do
  echo $line;
done

echo 'TODO: figure out a less trivial test'

# Not proper bash...
#node('amd64 && docker') {
#  eshagent([sshCreds]) {
#    stage('SCM') {
#
#    }
#  }
#}
