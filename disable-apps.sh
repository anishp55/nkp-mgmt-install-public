#!/usr/bin/env bash

set +e

for i in $(cat app-list | grep disable)
do
   kubectl delete appdeployment -n kommander  (echo $i | awk -F"," '{print $1}')
done