security_group_name = "mini-projet-terraform"
security_group_tag = {
  Name = "security_group"
}
instance_type = "t3.small"
key_name      = "terraform-project"
user          = "ubuntu"
instance_tag = {
  Name = "ec2-project"
}
ebs_zone = "us-east-1a"
ebs_size = "10"
ebs_tag = {
  Name = "ebs-project"
}
eip_tag = {
  Name = "eip-project"
}