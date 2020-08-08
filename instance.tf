provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = var.region//"us-east-1"
}
resource "aws_instance" "myEc2" {
  ami           = var.ami_name
  instance_type = var.intance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public_subnet.id
   associate_public_ip_address = true
  count         = "1"
  tags = {
    Name = "web_server" 
  }

  locals{
    webserver_name = "Web Server"
  }

  tags{
    name = local.webserver_name
  }

  //depends_on = [aws_vpc.main]
connection {
    type = "ssh"
    user = var.user_name
    private_key = file("~/.ssh/id_rsa")
    host = self.public_ip
 }
  provisioner "remote-exec" {
     inline = [
        "sudo apt update",
        "sudo apt install nginx -y",
        "sudo systemctl start nginx",
        "systemctl enable nginx"
   ]
 }



}
  