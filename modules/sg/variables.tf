variable "security_group_name" {
    type        = string
    default = "security_group"
    description = "The name of the security group"
}

variable "security_group_tag" {
    type = map
     default = {
        Name = "security_group"
    }
    description = "Tag for the security group"
}