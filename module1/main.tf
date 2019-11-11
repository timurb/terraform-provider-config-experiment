### Defining provider with no region doesn't work.
### See also https://www.terraform.io/docs/providers/aws/index.html#region

#provider "aws" {}

data "aws_region" "current" {}

resource "aws_eip" "eip" {
}

output "eip" {
  value = aws_eip.eip
}

output "region" {
  value = data.aws_region.current
}