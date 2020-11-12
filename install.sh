AUTOGIT_PATH=./auto-git-control-verion/autogit.sh

BACKUP_PATH=./tar-backup-control-version/backup.sh

FLASK_PATH=/usr/local/src/Flask_auto
TAR_FILE_NAME=flask-file-structure.tar
TAR_FILE_PATH=./flask-file-structure/$TAR_FILE_NAME
FLASK_SCRIPT_PATH=$(pwd)/flask-automation/flask.sh
BINARY_PATH=/usr/bin


if [[ $USER != "root" ]]
then
	echo "in the installation process i need to root access"
	exit
fi

echo install AutoGit
cp $AUTOGIT_PATH $BINARY_PATH/AutoGit

echo install backup
cp $BACKUP_PATH $BINARY_PATH/backup

echo install flask-file-structure.
rm -rf $FLASK_PATH
mkdir -p $FLASK_PATH

cp $TAR_FILE_PATH $FLASK_PATH
cd $FLASK_PATH

tar xf $TAR_FILE_NAME
rm -rf $TAR_FILE_NAME

cp $FLASK_SCRIPT_PATH $BINARY_PATH/Flask

