MYDIR="$(dirname "$(readlink -f "$0")")"
source "$MYDIR"/config.cfg
if [ -z "$USER" ]
then
    read -p "What is your GitHub Username? " USER
fi
if [ -z "$PASSWORD" ]
then
    read -p "What is your GitHub Password? " PASSWORD
fi
read -p "What is the name of the repo you want removed? " REPONAME
curl -u $USER:$PASSWORD -X DELETE https://api.github.com/repos/$USER/$REPONAME