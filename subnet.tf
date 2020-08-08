resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id //"vpc-0558eb978b89ca197"
  cidr_block = var.cidr_block //"10.0.1.0/24"
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "public_subnet"
  }
}