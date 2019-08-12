provider "aws" {
  region = var.region
}
resource "aws_instance" "instances" {
  ami = lookup(var.amis,var.region)
  instance_type = var.instancetype
}