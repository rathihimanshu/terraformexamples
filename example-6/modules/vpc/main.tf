resource "aws_vpc" "testvpc" {
  cidr_block = var.vpccidr
  tags = {
    Name = var.vpcname
  }
}
resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.testvpc.id}"
}
resource "aws_subnet" "pubsubnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "${aws_vpc.testvpc.id}"
  tags = {
    Name = "testsubnetpublic"
  }
  map_public_ip_on_launch = true
}
resource "aws_subnet" "pvtsubnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id = "${aws_vpc.testvpc.id}"
  tags = {
    Name = "testsubnetprivate"
  }
  //map_public_ip_on_launch = true
}
resource "aws_route_table" "publicrt" {
  vpc_id = "${aws_vpc.testvpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.ig.id}"
  }
}
resource "aws_route_table_association" "rtpub" {
  route_table_id = "${aws_route_table.publicrt.id}"
  subnet_id = "${aws_subnet.pubsubnet.id}"
}