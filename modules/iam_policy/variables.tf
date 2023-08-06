variable "role_name" {
  description = "The name of the role"
  type        = string
}

variable "source_bucket_name" {
  description = "The name of the source s3 bucket"
  type        = string
}

variable "destination_bucket_name" {
  description = "The name of the destination s3 bucket"
  type        = string
}