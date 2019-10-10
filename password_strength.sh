#!/bin/bash

 

echo -e "Please enter your password: \c"
read pass
readonly re_digit='[[:digit:]]'
readonly re_lower='[[:lower:]]'
readonly re_punct='[[:punct:]]'
readonly re_space='[[:space:]]'
readonly re_upper='[[:upper:]]'

 

for re in "$re_digit" "$re_lower" "$re_punct" "$re_upper" "8"
do
[[ ${pass} =~ $re ]] || [[ ${#pass} =~ $re ]]
done
[ $? -eq 0 ] && echo "Met all requirement" || echo "not met all the requirement"
