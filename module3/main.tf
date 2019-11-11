provider "aws" {
  region = "us-west-2"
}

data "aws_region" "current" {}

resource "aws_eip" "eip" {
}

output "eip" {
  value = aws_eip.eip
}

output "region" {
  value = data.aws_region.current
}