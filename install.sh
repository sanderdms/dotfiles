mkdir -p ~/.bashrc-backupdir

if [ -f ~/.bash_aliases ]; then
    cp ~/.bash_aliases ~/.bashrc-backupdir/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
    cp ~/.bash_functions ~/.bashrc-backupdir/.bash_functions
fi

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc-backupdir/.bashrc
fi

cp .bash_functions ~/.bash_functions
cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc