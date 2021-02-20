#!/bin/sh
case $1 in
    npm)
        npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
        npx gitignore node
        npx covgen "$(npm get init.author.email)"
        npm init -y
    ;;
    yarn)
        yarn dlx license $(yarn config get init-license) -o "$(yarn config get init-author-name)" > LICENSE
        yarn dlx gitignore node
        yarn dlx covgen "$(yarn config get init-author-email)"
        yarn init -y
    ;;
esac