git_branch(){

git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


#gitignore configurations
function giti() {


    if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit
fi
cat $DOTFILES/git/_$1 >> .gitignore"

}