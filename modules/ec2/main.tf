data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}

resource "aws_instance" "ec2_instance" {
  ami = data.aws_ami.ubuntu_ami.id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = ["${var.security_group_name}"]
  tags = var.tags

  root_block_device {
      volume_size = 10
      volume_type = "gp2"
      encrypted = false
      delete_on_termination = true
    }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install nginx -y"
    ]
    connection {
      type = "ssh"
      user = var.user
      host = self.public_ip
      private_key = file("../app/files/${var.key_name}.pem")
    }
  }
}