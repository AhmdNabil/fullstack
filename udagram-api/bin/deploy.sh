#!/usr/bin/env bash
set -x
set -e
eb init udagram-api --platform Node.js --region us-east-1

AWS_CONFIG_FILE=$HOME/.aws/config

echo "[profile default]"                             > $AWS_CONFIG_FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY_ID"         >> $AWS_CONFIG_FILE
echo "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" >> $AWS_CONFIG_FILE

eb setenv AWS_ACCESS_KEY=$AWS_ACCESS_KEY_ID AWS_SECRET=$AWS_SECRET_ACCESS_KEY POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD PORT=$PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST AWS_REGION=$AWS_REGION AWS_BUCKET=$AWS_BUCKET URL=$URL JWT_SECRET=$JWT_SECRET


eb deploy
