#!/usr/bin/env bash

if [ "$1" == 'overwrite' ]
then
    overwrite=true
else
    overwrite=false
fi

function migrate {
    src=$1
    dest=$2

    if [ -e $dest ]
    then
	if [ "$overwrite" == 'true' ]
	then
	    rm -i $dest
	else
	    echo $dest exists.
	    echo run \'deploy.sh overwrite\' to overwrite existing files
	    return
	fi
    fi


    echo [*]Migrating $src to $dest
    ln -s $(pwd)/$src $dest
}

for i in `ls -d *.config`
do
    echo Deploying $i
    pushd $i
    source deploy.sh
    popd
done

echo Done
