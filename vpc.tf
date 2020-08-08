resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block //"10.0.0.0/16"
  instance_tenancy = var.instance_tenancy //"default"

  tags = {
    Name = "mainVPC"
  }
}