#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Command only takes one parameter <subcommand>."
    exit 1
fi

function goopsite_serve {
    echo "Serve locally with jekyll."
    cd $SITE_SRC
    jekyll serve --watch --force_polling -H 0.0.0.0
}

function goopsite_deploy {
    echo "Deploying site with rsync via ssh."
    source /vagrant/deploy/vars
    echo "Connecting as ${DEPLOY_USER} to ${DEPLOY_IP}:${DEPLOY_PORT} and syncing to ${DEPLOY_PATH}"
    rsync -av --rsh="ssh -p 2222 -i ${DEPLOY_KEY}" $SITE_SRC/_site/ $DEPLOY_USER@$DEPLOY_IP:$DEPLOY_PATH
}

case $1 in
    "serve" )
        goopsite_serve
        ;;
    "deploy" )
        goopsite_deploy
        ;;
    * )
        echo "'$1' is not a recognized subcommand."
        exit 1
        ;;
esac


