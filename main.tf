provider "aws" {
    shared_config_files = "${var.shared_config_files}"
    profile = "${var.profile}"
    region = "${var.region}"
}

module "source_aws_s3_bucket" {
  source = "./modules/s3"
  bucket_name = var.source_bucket_name
}

module "destination_aws_s3_bucket" {
  source = "./modules/s3"
  bucket_name = var.destination_bucket_name
}

module "iam_policy" {
  source = "./modules/iam_policy"
  role_name = var.role_name
  source_bucket_name = var.source_bucket_name
  destination_bucket_name = var.destination_bucket_name
  depends_on = [ module.source_aws_s3_bucket, module.destination_aws_s3_bucket ]
}

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
