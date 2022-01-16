git init;
git add .;
git commit -m "first commit";

REPO_NAME=automation-in-repository-creation

curl -i -u "$USER_GITHUB:$TOKEN_GITHUB" https://api.github.com/user/repos -d '{"name":"'$REPO_NAME'"}'
sleep 3
git remote add origin https://github.com/$USER_GITHUB/$REPO_NAME
git push --set-upstream origin master

