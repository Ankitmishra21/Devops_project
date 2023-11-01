# Define your primary infrastructure resources (e.g., EC2 instances, RDS, etc.)
resource "aws_instance" "primary_instance" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0123456789abcdef0"
  # Other configuration options for primary instances
}

output "instance_public_ip" {
  value = aws_instance.primary_instance.public_ip
}



