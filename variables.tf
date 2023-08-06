variable "source_bucket_name" {
    default = "pranoy-images"
}

variable "destination_bucket_name" {
    default = "thumbnail-pranoy-images"
}

variable "shared_config_files" {
    default = ["$HOME/.aws/config"]
}

variable "profile" {
    default = "pk-training"
}

variable "role_name" {
  default = "lambda-s3-thumbnail-role"
}

variable "region" {
    default = "ap-south-1"
}
