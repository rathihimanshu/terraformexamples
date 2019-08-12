variable "region" {}
variable "vpccidr" {}
variable "vpcname" {}
variable "subnetcidr" {
  type = list(string)
}
variable "subnetname" {}