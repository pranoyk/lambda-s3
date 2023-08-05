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