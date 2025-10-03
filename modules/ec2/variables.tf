variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.small"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "projet-terraform"
}

variable "security_group_name" {
    type        = string
    default = "security_group"
    description = "The name of the security group"
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map
  default     = {
    Name = "ec2"
  }
}

variable "user" {
  description = "User for the EC2 instance"
  type        = string
  default     = "ubuntu"
  
}