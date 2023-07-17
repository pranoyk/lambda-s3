# This is a trial to read and write into s3 via lambda

Whenever a image is pushed read from s3 bucket and let the lambda function generate a thumbnail out of it and write it to another s3 bucket.

### IAM policy provided to lambda function

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "logs:PutLogEvents",
                "logs:CreateLogGroup",
                "logs:CreateLogStream"
            ],
            "Resource": "arn:aws:logs:*:*:*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": "arn:aws:s3:::pranoy-read-bucket/*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject"
            ],
            "Resource": "arn:aws:s3:::pranoy-write-bucket/*"
        }
    ]
}
```

### Install the following packages 
```bash
pip install \
--platform manylinux2014_x86_64 \
--target=package \
--implementation cp \
--python-version 3.9 \
--only-binary=:all: --upgrade \
pillow boto3
```

### Create a .zip in order to upload to lambda
```bash
cd package
zip -r ../lambda_function.zip .
cd ..
zip lambda_function.zip lambda_function.py
```

### Steps to final set up

1. Add trigger in the lambda as the s3 bucket
2. Add Layers in aws lambda for `Pillow` as it is not available directly in the python `arn:aws:lambda:eu-north-1:770693421928:layer:Klayers-p38-Pillow:3`
