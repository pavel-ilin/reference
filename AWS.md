# Configure AWS credentials

```
// check what access keys we have
aws iam list-access-keys

// add new access keys
aws configure
```

# S3 

Buckets are repositories for objects that live in a specific Region. 

Deploy React on S3 bucket
```
// prepare build for deployment
yarn run build

// upload build to the s3
aws s3 sync build/ s3://bucket-name
```

# VPC - Virtual Privet Cloud

Create VPC
Config Internet Gateway through which we can accept traffic from the Internet.
Create Route table and add public rout (0.0.0.0/0) directory of the gateway as a target.
Create and run EC2 instance in a VPC

### SubNet

Subnet will allow us to limit what user ccan get access to through public gateway.
10.10.2.0/24

### ELB - Elastic Load Balancer

Alows us to destribute traffic between out subnets based on avaliability zone.


# EBS - Elastic Block Store

EBS provides persistent block storage volumes for use with EC2 instances in the cloud. Each EBS volume is automatically replicated inside an Availability Zone to protect you from component failure, which offers high availability and durability. EBS volumes offer the consistent and low-latency performance that you need to run your workloads.

