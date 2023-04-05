mkdir $HOME/.aws
echo '[default]' > $PWD/.devcontainer/credentials2
echo 'aws_access_key_id = '$AWS_ACCESS_KEY_ID >>  $PWD/.devcontainer/credentials2
echo 'aws_secret_access_key = '$AWS_SECRET_ACCESS_KEY >> $PWD/.devcontainer/credentials2
ln -sf $PWD/.devcontainer/credentials2 $HOME/.aws/credentials && set +x
ln -sf $PWD/.devcontainer/config $HOME/.aws/config && set +x
amplify pull --appId d7nhz7bwopao0 --envName devtrace --yes
