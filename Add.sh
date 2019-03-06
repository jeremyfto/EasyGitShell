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
read -p "What do you want your repo to be named? " REPONAME
curl -u $USER:$PASSWORD https://api.github.com/user/repos -d '{"name":"'"$REPONAME"'"}'
git init
git remote add origin https://github.com/$USER/$REPONAME
