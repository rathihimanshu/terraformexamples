provider "aws" {
  region = var.regionname
}
/*
resource "aws_instance" "machine" {
  ami = var.amiid
  instance_type = var.instancetype
  tags = {
    Name = var.instancename
  }
}
*/
resource "aws_iam_user" "users" {
  count = "${length(var.usernames)}"
  name = "${upper(element(var.usernames,count.index))}"
}
