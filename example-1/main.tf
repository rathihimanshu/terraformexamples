provider "aws" {
  region = "${var.regionname}"
}
provider "aws" {
  alias = "anotherprovider"
  region = "us-east-2"
}

resource "aws_instance" "machine" {
  ami = var.amiid
  instance_type = var.instancetype
  tags = {
    Name = var.instancename
  }
}
resource "aws_instance" "machine2" {
  provider = "aws.anotherprovider"
  ami = ""
  instance_type = ""
}