
if [[ $USER != "root" ]]
then
	echo "in the installation process i need to root access"
	exit
fi

rm -rf /usr/local/src/Flask_auto
rm -rf /usr/bin/AutoGit
rm -rf /usr/bin/backup
rm -rf /usr/bin/Flask
