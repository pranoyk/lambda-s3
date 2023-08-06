variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_source_file" {
  description = "The path to the Python file for the Lambda function"
  type        = string
}

variable "lambda_output_path" {
  description = "The path where the ZIP file for the Lambda function will be created"
  type        = string
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
}

variable "lambda_execution_role_arn" {
  description = "The ARN of the IAM role that the Lambda function will use for execution"
  type        = string
}
