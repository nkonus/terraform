resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id //aws_subnet.foo.id
  route_table_id = aws_route_table.route.id
}