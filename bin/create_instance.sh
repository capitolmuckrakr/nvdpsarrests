#!/bin/bash -e
# You need to install the AWS Command Line Interface from http://aws.amazon.com/cli/
VPCID=$(aws ec2 describe-vpcs --filter "Name=isDefault, Values=true" --query "Vpcs[0].VpcId" --output text)
echo $VPCID
SUBNETID=$(aws ec2 describe-subnets --filters "Name=vpc-id, Values=$VPCID" --query "Subnets[0].SubnetId" --output text)
echo $SUBNETID
SGID=$(aws ec2 create-security-group --group-name nvdpssecuritygroup --description "NV DPS arrests Postgres security group" --vpc-id $VPCID --output text)
echo $SGID
aws ec2 authorize-security-group-ingress --group-id $SGID --protocol tcp --port 5432 --cidr 0.0.0.0/0

INSTANCEID=$(aws rds create-db-instance \
    --db-name nvdpsarrests \
    --vpc-security-group-ids $SGID \
    --db-instance-identifier nvarrests \
    --allocated-storage 20 \
    --db-instance-class db.t2.small \
    --engine postgres \
    --master-username acohen \
    --master-user-password $PGPASSWORD \
--query "DBInstance.DBInstanceIdentifier" --output text)

echo "waiting for $INSTANCEID ..."

aws rds wait db-instance-available --db-instance-identifier $INSTANCEID

ENDPOINT=$(aws rds describe-db-instances --db-instance-identifier $INSTANCEID --query "DBInstances[0].Endpoint.Address" --output text)

echo "$INSTANCEID is available and listening on $ENDPOINT"

export INSTANCEID="${INSTANCEID}"

export AWS_PG_HOST="${ENDPOINT}"

exec $SHELL -i
