output "publicipofinstance" {
  value = "${module.creatinginstance.publicip}"
}
output "sgiddemo" {
  value = "${module.creatinginstance.sgid}"
}