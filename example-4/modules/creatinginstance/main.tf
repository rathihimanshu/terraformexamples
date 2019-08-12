resource "aws_instance" "machine" {
  ami = var.ami
  instance_type = var.instancetype
  tags = {
    Name = var.instancename
  }
  key_name = var.keyname
}