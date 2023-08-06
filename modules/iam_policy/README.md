# AWS IAM module

This modules creates a role and policy such that the source s3 bucket is provided a read access and destination s3 bucket is provided a write access.
Later on we attach this policy to our lambda function.

In order to use this module you can create a main.tf file

```hcl
module "iam_policy" {
  source = "./modules/iam_policy"
  role_name = var.role_name
  source_bucket_name = var.source_bucket_name
  destination_bucket_name = var.destination_bucket_name
}
```

Make sure to add appropriate credentials to create a bucket.