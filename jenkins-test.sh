#!/bin/bash

echo 'testing...'
ls . > test.txt

read -r line < test.txt
echo $line

# Not proper bash...
#node('amd64 && docker') {
#  eshagent([sshCreds]) {
#    stage('SCM') {
#
#    }
#  }
#}
