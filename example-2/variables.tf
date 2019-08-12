variable "regionname" {
  type = "string"
  default = "us-east-1"
}
variable "amiid" {
  default = "ami-035b3c7efe6d061d5"
}
variable "instancetype" {
  default = "t2.micro"
}
variable "instancename" {
   default = "fromvarfile"
}
variable "usernames" {
  type = list(string)
}