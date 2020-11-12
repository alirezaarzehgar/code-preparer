# code-preparer
every one need to the clean and standard code structure.
but we can't write code and standard structure in a few time.

and probably we want to any small tools for improve development time.

we can't commit and add every time.
we can't make one standard project structure with one command and so forth

code-preparer convert hard development to suitable way for control your projects and avoid big mistakes.
some times we modified our project and saw apear a big bug!
then we cry and try to fix it :)

this tools create backup and git tag version every time that you run your project.

## features
-  create project tar backup
-  create git tag version
-  create fast flask standard structure 

# installing
$ `git clone https://github.com/alirezaarzehgar/code-preparer.git`

$ `cd code-preparer`

$ `sudo ./install.sh`


# guide

### create a flask project
$ `Flask startproject`

### run flask project with create backup and new version on git
$ `Flask run`

note that we need to run `Flask` not `flask` for create backup

### restore and checkout to backups
you shold know about git commands you can read this article :
https://www.edureka.co/blog/git-commands-with-example/

then you can use this option

### see your backups
$ `git tag`

### restore and move to any version that you want
$ `git checkout v.x.x.x`

### for example checkout to first run structure
$ `git checkout v.0.0.1`

### increase major, minor or patch of vesion
by default when you start your peoject by `Flask` command `code-preparer` do commit and create a version tag and increase patch of version.
for example first version is v.0.0.1 and second version is v.0.0.2
if you want to increase major or minor, you can use `AutoGit` command on each project.

### increase patch
$ `AutoGit`

### increase minor
$ `AutoGit minor`

### increase major
$ `AutoGit major`

# tar backup
if you want to create your backups with tar you ca use `backup` command in your project

### create backup
$ `backup patch`
$ `backup minor`
$ `backup major`

by default we increase patch


i hope you enjoy :D
i'll improve this repo :)

## uninstalling
$ `sudo ./uninstall.sh`
