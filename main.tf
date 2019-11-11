variable "region" {
  default = "eu-west-2"
}

provider "aws" {
  region = var.region
}

module "module1" {
  source = "./module1/"
}

module "module2" {
  source = "./module2/"
}

module "module3" {
  source = "./module3/"
}

module "module4" {
  source = "./module4/"
  region = var.region
}

output "eip1" {
  value = module.module1
}

output "eip2" {
  value = module.module2
}

output "eip3" {
  value = module.module3
}

output "eip4" {
  value = module.module4
}
