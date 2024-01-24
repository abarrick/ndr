#! /bin/bash
branchName="$SOURCE_PROMOTION_BRANCH"
unprefixed=${branchName:12}
join="_-_"
remainder=${unprefixed#*$join}
substrLength=$(( ${#unprefixed} - ${#remainder} - ${#join} ))
echo "base_name=${branchName:12:${substrLength}}"
echo "base_name=${branchName:12:${substrLength}}" >> $GITHUB_OUTPUT