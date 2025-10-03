variable "eip_tag" {
    type = map
     default = {
        Name = "eip-project"
    }
    description = "Tag for the elastic IP"
}