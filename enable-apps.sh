#!/usr/bin/env bash

set +e

for i in $(cat app-list | grep enable)
do
   nkp create appdeployment $(echo $i | awk -F"," '{print $1}') --app $(echo $i | awk -F"," '{print $2}') -w kommander-workspace
done