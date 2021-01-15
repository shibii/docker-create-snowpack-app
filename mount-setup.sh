#!/bin/bash

# generate a sample project with create-snowpack-app
docker run -v $PWD/app:/usr/src/app -w /usr/src --rm -it node:alpine /bin/sh -c 'npx -y create-snowpack-app app --force --template @snowpack/app-template-svelte'

# set up user/group permissions of the create-snowpack-app generated mounted app folder
chown -R $1:1030 app # 1030 gid used to both by host and inside the dev container
chmod -R 775 app
chmod -R g+s app
adduser $1 1030