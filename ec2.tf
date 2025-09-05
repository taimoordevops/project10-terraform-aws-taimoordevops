resource "aws_instance" "example" {
  ami           = "ami-08bdc08970fcbd34a" # Ubuntu 22.04 in eu-north-1
  instance_type = "t3.micro"

  tags = {
    Name = "Project10-Terraform-EC2"
  }
}