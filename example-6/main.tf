provider "aws" {
  region = var.region
}
module "testvpc" {
  source = "./modules/vpc"
  vpccidr = var.vpccidr
  vpcname = var.vpcname

}