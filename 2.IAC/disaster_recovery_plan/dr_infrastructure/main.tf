# Define your disaster recovery infrastructure resources (e.g., EC2 instances, RDS, etc.)
resource "aws_instance" "dr_instance" {
  provider      = aws.dr
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0123456789abcdef1"
  # Other configuration options for disaster recovery instances
}

variable "enable_failover" {
  description = "Enable failover to the disaster recovery region"
  type        = bool
}

output "instance_public_ip" {
  value = aws_instance.dr_instance.public_ip
}
