for file in `ls`
do
    if [ $file != 'deploy.sh' ]
    then
	migrate $file ~/.$file
    fi
done
