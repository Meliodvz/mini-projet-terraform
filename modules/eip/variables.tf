variable "eip_tag" {
    type = map
     default = {
        Name = "eip"
    }
    description = "Tag for the elastic IP"
}