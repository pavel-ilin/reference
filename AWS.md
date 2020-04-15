# Configure AWS credentials

```
// check what access keys we have
aws iam list-access-keys

// add new access keys
aws configure
```

# S3 

Deploy React on S3 bucket
```
// prepare build for deployment
yarn run build

// upload build to the s3
aws s3 sync build/ s3://bucket-name
```