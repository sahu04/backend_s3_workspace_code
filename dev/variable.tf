variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "environment" {
  description = "Environment name (dev/stage)"
  type        = string
}


variable "region" {
  description = "AWS region"
  type        = string
  
}