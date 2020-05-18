#add the current branch to terminal prompt in a git repository
git_branch(){

git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#mkcdir
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

#gitignore configurations
#Provision / append .gitignore file
function gitig() {


    if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit
fi
cat $DOTFILES/_gitignore/_$1 >> .gitignore

}