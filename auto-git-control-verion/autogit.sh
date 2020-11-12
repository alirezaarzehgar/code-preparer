parametr=$1

if [[ ! -d .git ]]
then
	git init > /dev/null

	echo .* > .gitignore
fi

latest=$(git tag | sort --version-sort | tail -n1)

if [[ $1 = 'reset' ]]
then
	git checkout $latest
	exit
fi

if [[ $latest = $NULL  ]]
then
	latest=v.0.0.0
fi

function filter() {
	part=$1
	version=$2

	echo $version | cut -f $part -d.
}

# filter latest backup name
major=$(filter 2 $latest)
minor=$(filter 3 $latest)
patch=$(filter 4 $latest)

# check argument commands
if [[ $parametr = "major" ]]
then
	version_name="v.$(($major + 1)).0.0"

elif [[ $parametr = "minor" ]]
then
	version_name="v.$major.$(($minor + 1)).0"

else
	version_name="v.$major.$minor.$(($patch + 1))"

fi

if [[ $(git status | wc -l) != "2" ]]
then
	git add -A > /dev/null
	git commit -m "we will create $version_name at $(date)" > /dev/null
	git tag -a $version_name -m "$version_name created" > /dev/null

else
	printf "\033[31m"
	echo 'On branch master'
	echo 'nothing to commit, working tree clean'
	printf "\033[31m"

fi
