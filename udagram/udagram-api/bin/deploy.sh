#set -x
#set -e
#
#eb use Udagramapi-env
#
#eb setenv POSTGRES_HOST=$POSTGRES_HOST
#          POSTGRES_DB=$POSTGRES_DB
#          POSTGRES_USERNAME=$POSTGRES_USERNAME
#          POSTGRES_PASSWORD=$POSTGRES_PASSWORD
#          AWS_REGION=$AWS_REGION
#          AWS_PROFILE=$AWS_PROFILE
#          AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
#          AWS_BUCKET=$AWS_BUCKET
#          JWT_SECRET=$JWT_SECRET
#          AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
#          AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
#          URL=$URL
#
#eb deploy Udagramapi-env

cd ./www
eb init udagram-api --region us-east-1 --platform node.js
eb use Udagramapi-env
eb setenv POSTGRES_HOST=$POSTGRES_HOST
PORT=$PORT
POSTGRES_USERNAME=$POSTGRES_USERNAME
POSTGRES_PASSWORD=$POSTGRES_PASSWORD
POSTGRES_DB=$POSTGRES_DB
DB_PORT=$DB_PORT
AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
URL=$URL
JWT_SECRET=$JWT_SECRET
AWS_BUCKET=$AWS_BUCKET
eb deploy Udagramapi-env
