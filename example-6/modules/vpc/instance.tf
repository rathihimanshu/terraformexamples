resource "aws_security_group" "mysg" {
  vpc_id = "${aws_vpc.testvpc.id}"
  tags = {
    Name = "testsg"
  }
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
}
resource "aws_instance" "machine1" {
  ami = "ami-02f706d959cedf892"
  instance_type = "t2.micro"
  tags = {
    Name = "webserver"
  }
  subnet_id = "${aws_subnet.pubsubnet.id}"
  vpc_security_group_ids = ["${aws_security_group.mysg.id}"]
  user_data = <<EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              chkconfig httpd on
              echo "<body bgcolor="#FFFF00"></body>" > /var/www/html/index.html
              EOF
}
