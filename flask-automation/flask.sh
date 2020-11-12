if [[ $1 = 'startproject' ]]
then
	cp -r /usr/local/src/Flask_auto/* ./
	AutoGit
	echo '__pycache__' >> .gitignore

else
	if [[ $2 = "tar" ]]
	then
		backup
	else
		AutoGit
	fi

	/usr/local/bin/flask $1
fi

