# PIPELINE

## CircleCI (CI/CD)
ENV variables to CircleCI POSTGRES_USERNAME - POSTGRES_PASSWORD - POSTGRES_DB - POSTGRES_HOST - PORT - AWS_ACCESS_KEY_ID - AWS_BUCKET - JWT_SECRET - NODE_OPTIONS - URL - AWS_SECRET_KEY - AWS_SECRET
* When code is published to circleCI , it will pull and push code to AWS

when it is combiled then it is pushed to s3 within bin/deploy.sh 

Then the API server bushed to EB app/environment which defined in .elasticbeanstalk/config.yml.
The RDS which will be used , it defined as env variable 