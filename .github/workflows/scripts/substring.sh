#! /bin/bash
branchName="gs-pipeline/feature/workflows_-_int"
unprefixed=${branchName:12}
join="_-_"
remainder=${unprefixed#*$join}
substrLength=$(( ${#unprefixed} - ${#remainder} - ${#join} ))
echo "baseBranch=${branchName:12:${substrLength}}" >> $GITHUB_OUTPUT