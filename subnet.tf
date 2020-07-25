resource "aws_subnet" "public_subnet" {
  vpc_id     = "vpc-0558eb978b89ca197"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet"
  }
}