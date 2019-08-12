variable "region" {}
variable "instancetype" {
  default = "t2.micro"
}
variable "amis" {
  type = map
  default = {
    "us-east-1" = "ami-035b3c7efe6d061d5"
    "us-east-2" = "ami-02f706d959cedf892"
  }
}