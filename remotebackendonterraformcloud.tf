terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = "~> 0.14"
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "<YOUR-ORG-NAME>"

    workspaces {
      name = "state-migration"
    }
  }
}
