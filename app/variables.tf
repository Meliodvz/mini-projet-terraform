# Variables for the EC2 instance

variable "security_group_name" {
  description = "The name of the security group"
  type        = string

}

variable "security_group_tag" {
  description = "Tags for the security group"
  type        = map(any)

}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"

}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string

}

variable "user" {
  description = "The user to use for the instance"
  type        = string

}

variable "instance_tag" {
  description = "Tags to apply to the resources"
  type        = map(any)

}

# Variables for the EBS

variable "ebs_zone" {
  description = "The Availability Zone of the EBS"
  type        = string
  default     = "eu-west-3"
}

variable "ebs_size" {
  description = "The size of the EBS volume in GiB"
  type        = number
  default     = 8
}

variable "ebs_tag" {
  description = "The tags for the EBS project"
  type        = map(any)
  default = {
    Name = "ebs-project"
  }
}

# Variables for the EIP

variable "eip_tag" {
  description = "The tag for the EIP"
  type        = map(any)
  default = {
    Name = "eip-project"
  }

}