variable "ebs_zone" {
    type = string
    default = "eu-west-3"
    description = "The Availability Zone of the EBS"
}

variable "ebs_size" {
    type = number
    default = 8
    description = "The size of the EBS volume in GiB"
}

variable "ebs_tag" {
    type = map
    default = {
        Name = "ebs-project"
    }
    description = "The tags for the EBS volume"
}