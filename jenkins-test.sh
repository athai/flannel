#!/bin/bash

echo 'testing...'

rm -f -- marker-ouptut.txt

cd Documentation
marker > ../marker-output.txt
cd ..

if grep "broken" marker-output.txt; then
  echo "WARNING: Broken reference/path/url found"
else
  echo "Good to go"
fi

# Not proper bash...
#node('amd64 && docker') {
#  eshagent([sshCreds]) {
#    stage('SCM') {
#
#    }
#  }
#}
