function createLocalRopository {
    git init;
    echo readme > readme.md
    git add .;
    git commit -m "first commit";
    echo Local repository created successfully
}

function createRemoteRepository {
    echo repository name
    read REPOSITORY_NAME

    curl -i -u "$USER_GITHUB:$TOKEN_GITHUB" https://api.github.com/user/repos -d '{"name":"'$REPOSITORY_NAME'"}'
    sleep 2
    git remote add origin https://github.com/$USER_GITHUB/$REPOSITORY_NAME.git
    git push --set-upstream origin master
    google-chrome https://github.com/$USER_GITHUB/$REPOSITORY_NAME.git
    echo Remote repository created successfully
}

echo create a Local repository?yes-1 or not-0
read hasLocalRepository

if [ $hasLocalRepository -eq 1 ]
then
    echo creating Local repository
    createLocalRopository
fi

echo create a remote repository?yes-1 or not-0
read hasRemoteRepository

if [ $hasRemoteRepository -eq 1 ]
then
    echo creating remote repository
    createRemoteRepository
fi



