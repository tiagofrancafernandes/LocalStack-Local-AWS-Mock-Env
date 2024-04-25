echo ''
echo '------------------------------------------'
echo 'creating test bucket'
awslocal s3api create-bucket --bucket test-bucket
echo '------------------------------------------'

echo ''
echo '------------------------------------------'
echo 'listing buckets'
awslocal s3api list-buckets
echo '------------------------------------------'

echo ''
echo '------------------------------------------'
echo 'Creating SNS topic'
awslocal sns create-topic --name local-sns-export-teste1
echo '------------------------------------------'

echo ''
echo '------------------------------------------'
echo 'Subscribing SNS topic'
awslocal sns subscribe \
   --topic-arn arn:aws:sns:us-east-1:000000000000:local-sns-export-teste1 \
   --protocol http \
   --notification-endpoint http://customer1.myapp.local:8003/webhooks/incoming
echo '------------------------------------------'

echo '------------------------------------------'
ls -lah
echo '------------------------------------------'

echo '------------------------------------------'
echo 'env:'
env
echo '------------------------------------------'
