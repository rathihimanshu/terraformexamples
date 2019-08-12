provider "aws" {
  region = var.region
}
module "creatinginstance" {
  source = "./modules/creatinginstance"
  ami = var.rootami
  instancename = var.rootinstancename
  instancetype = var.rootinstancetype
  keyname = "${module.keypair.keyname}"
}


module "keypair" {
  source = "./modules/keypair"
}

module "allowssh" {
  source = "./modules/allowssh"
  // count = "${length(module.creatinginstance.sgid)}"
  sg = "${module.creatinginstance.sgid}"
}