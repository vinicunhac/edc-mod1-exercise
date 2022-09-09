variable "aws_region" {
  default     = "us-east-2"
}


variable "lambda_function_name" {
  default     = "ExecuteEMR"
}

variable "airflow_subnet_id" {
  default = "subnet-038c9366456ffe5d7"
}

variable "vpc_id" {
  default = "vpc-004b8a904b3f7c30f"
}

variable "key_pair_name" {
  default = "key-pair-vini"
}


