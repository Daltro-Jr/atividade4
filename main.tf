provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "servidor_ubuntu" {
  ami = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  tags = {
    Name = "servidor_ubuntu_ansible"
  } 
  vpc_security_group_ids = ["${aws_security_group.padrao.id}"]
}
