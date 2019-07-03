#!/bin/bash
IP=$(cat ~/Documents/crypted/ip)
path="server/public/cv/"

#read details
echo -e "Building..."
npm run build
echo -n User:
read username
fullpath="/home/$username/$path"
remotePath="$username@$IP:$fullpath"
echo -e "Removing old version at $remotePath"
ssh "$username@$IP" "rm -R $fullpath"
echo -e "Sending to remote at $remotePath"

scp -r dist/ $username@$IP:/home/$username/$path
