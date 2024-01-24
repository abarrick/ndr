#! /bin/bash
branchName="gs-pipeline/feature/workflows_-_int"
unprefixed=${branchName:12}
join="_-_"
remainder=${unprefixed#*$join}
substrLength=$(( ${#unprefixed} - ${#remainder} - ${#join} ))
echo "base_name=${branchName:12:${substrLength}}"