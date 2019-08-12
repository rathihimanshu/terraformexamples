provider "aws" {
  region = var.region
}
module "myvpc" {
  source = "./modules/vpc"
  vpccidr = var.vpccidr
  vpcname = var.vpcname
  subnetcidr = var.subnetcidr
  subnetname = var.subnetname
}