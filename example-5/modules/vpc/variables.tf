variable "vpcname" {}
variable "vpccidr" {}
variable "subnetcidr" {
  type = list(string)
}
variable "subnetname" {}
data "aws_availability_zones" "az" {}