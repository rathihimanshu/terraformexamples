resource "aws_security_group_rule" "sgrule" {
  from_port = 22
  protocol = "tcp"
  security_group_id = var.sg
  to_port = 22
  type = "ingress"
  cidr_blocks = ["0.0.0.0/0"]
}