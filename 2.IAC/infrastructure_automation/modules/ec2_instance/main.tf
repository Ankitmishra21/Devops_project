resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

