#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Command only takes one parameter <subcommand>."
    exit 1
fi

function goopsite_serve {
    jekyll serve --watch --force_polling -H 0.0.0.0
}

function goopsite_deploy {
    echo "Deploy not implemented yet."
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


