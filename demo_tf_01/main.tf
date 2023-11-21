provider "aws" {
  access_key = "Enter here"
  secret_key = "Enter here"
  token = "Enter here"
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  key_name = "vockey"
  tags = {
	Name = "Demo"
  }
}