# AWS S3 module

In order to use this module you can create a main.tf file

```hcl
module "source_aws_s3_bucket" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}
```

Make sure to add appropriate credentials to create a bucket.