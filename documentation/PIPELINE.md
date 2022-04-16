# PIPELINE

1- Start building
2- Checkout code
3- Install AWS & EB 
4- Configure credentials
5- Install frontend & backend
6- Build frontend & backend
7- Deploy frontend (S3)
8- Deploy backend (EB)
9- Sitting variables 
10- READYYYYYYYY TO USE!!!!!!

## CircleCI (CI/CD)
ENV variables to CircleCI POSTGRES_USERNAME - POSTGRES_PASSWORD - POSTGRES_DB - POSTGRES_HOST - PORT - AWS_ACCESS_KEY_ID - AWS_BUCKET - JWT_SECRET - NODE_OPTIONS - URL - AWS_SECRET_KEY - AWS_SECRET
* When code is published to circleCI , it will pull and push code to AWS

when it is combiled then it is pushed to s3 within bin/deploy.sh 

Then the API server bushed to EB app/environment which defined in .elasticbeanstalk/config.yml.
The RDS which will be used , it defined as env variable 
