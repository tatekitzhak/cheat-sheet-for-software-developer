## Edit / Cat the credentials / config file.
- `vim ~/.aws/credentials` OR `cat ~/.aws/credentials`
- `vim ~/.aws/config` OR `cat ~/.aws/config`


## Start / Stop an Amazon EC2 instance
Start:
- `aws ec2 start-instances --instance-ids i-xxx`
Stop:
- `aws ec2 stop-instances --instance-ids i-xxx`

## Get the Public IP Addresses of your EC2 Instances Using AWS CLI
- `aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId, PublicIpAddress]' --output table `

## List S3 Buckets using AWS CLI
- `aws s3 ls`
## Listing all objects in a bucket
- `aws s3 ls s3://my_bucket_name`