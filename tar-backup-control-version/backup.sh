BACKUP_DIR=Backups
parametr=$1

if [[ -d $BACKUP_DIR ]]
then
	latest=$(ls $BACKUP_DIR | tail -n1)
else
	mkdir $BACKUP_DIR
	latest=backup.0.0.0.tar
fi

# split by '.' and get major minor and patch
function filter() {
	number=$1
	name=$2
	result=$(echo $name | cut -f $number -d.)

	echo $result
}

# filter latest backup name
major=$(filter 2 $latest)
minor=$(filter 3 $latest)
patch=$(filter 4 $latest)


# check argument commands
if [[ $parametr = 'major' ]]
then
	back_name="backup.$(($major + 1)).0.0.tar"

elif [[ $parametr = 'minor' ]]
then
	back_name="backup.$major.$(($minor + 1)).0.tar"

else
	back_name="backup.$major.$minor.$(($patch + 1)).tar"

fi


find -maxdepth 1 -not -name ".*" -and -not -name $BACKUP_DIR |  xargs tar cf $back_name 
mv $back_name ./$BACKUP_DIR
