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
  default = "lambda-s3-thumbnail-role123"
}

variable "region" {
  default = "ap-south-1"
}

variable "lambda_function_name" {
  default = "my-thumbnail-function"
}

variable "lambda_source_file" {
  default = "./lambda_function.py"
}

variable "lambda_output_path" {
  default = "./lambda_function.zip"
}

variable "lambda_handler" {
  default = "lambda_function.handler"
}

variable "lambda_runtime" {
  default = "python3.8"
}
