# AWS lambda-function module

This module will create a aws lambda function.

```hcl
module "custom_lambda_module" {
  source                   = "./modules/lambda_function"
  lambda_function_name     = var.lambda_function_name
  lambda_source_file       = var.lambda_source_file
  lambda_output_path       = var.lambda_output_path
  lambda_handler           = var.lambda_handler
  lambda_runtime           = var.lambda_runtime
  lambda_execution_role_arn = module.iam_policy.role_arn
  depends_on = [ module.source_aws_s3_bucket, module.destination_aws_s3_bucket, module.iam_policy ]
}
```

TODO: update the module to add trigger and also figure out a way to create layers