variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones for the subnets"
  type        = list(string)
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "ami_id" {
  description = "AMI ID to use for instances"
  type        = string
}

variable "bastion_instance_type" {
  description = "Instance type for the bastion host"
  type        = string
  default     = "t2.micro"
}

variable "bastion_key_name" {
  description = "Key pair name for the bastion host"
  type        = string
}

variable "node_count" {
  description = "Number of k3s cluster nodes"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Instance type for k3s nodes"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for k3s nodes"
  type        = string
}