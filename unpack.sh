#!/usr/bin/env bash

SCRIPTPATH=$( builtin cd $(dirname $0) ; pwd -P )
cd $SCRIPTPATH
_FLOWZ=(*\.alfredworkflow)

for i in ${_FLOWZ[@]} 
do echo -n "unpacking "
    mkdir -p source/$i && unzip $i -d $_
    echo "done."
done

echo "run \`git add $SCRIPTPATH && git commit\`"

