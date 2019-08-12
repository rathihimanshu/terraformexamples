output "publicip" {
  value = "${aws_instance.machine.public_ip}"
}
output "sgid" {
  value = "${element(tolist(aws_instance.machine.vpc_security_group_ids),0)}"
}