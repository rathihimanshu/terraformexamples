resource "aws_vpc" "myvpc" {
  cidr_block = var.vpccidr
  tags = {
    Name = var.vpcname
  }
}
resource "aws_subnet" "mysubnet" {
  count = "${length(data.aws_availability_zones.az.names)}"
  cidr_block = "${element(var.subnetcidr,count.index)}"
  vpc_id = "${aws_vpc.myvpc.id}"
  availability_zone = "${element(data.aws_availability_zones.az.names,count.index)}"
  tags = {
    Name = "mysubnet+${count.index}"
  }
}