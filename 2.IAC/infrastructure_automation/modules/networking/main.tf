resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  count = 2
  vpc_id     = aws_vpc.example.id
  cidr_block = element(["10.0.1.0/24", "10.0.2.0/24"], count.index)
}

output "public_subnet_id" {
  value = aws_subnet.public[*].id
}

