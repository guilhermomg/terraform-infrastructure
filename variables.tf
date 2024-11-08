variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block da VPC"
  type        = string
}

variable "ec2_instance_type" {
  description = "Tipo da instância EC2"
  type        = string
}

variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}
