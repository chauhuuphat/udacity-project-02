# Define the variable for aws_region
variable "region" {
    description = "value of Region"
    type = string
}

variable "iam_role_name" {
    description = "Name of IAM role for Lambda execute"
    type = string
}

variable "output_path" {
    description = "Path of source code python with zip format"
    type = string
}