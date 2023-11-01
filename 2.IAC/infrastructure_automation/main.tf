# Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Module Declarations
module "networking" {
  source = "./modules/networking"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  subnet_id = module.networking.public_subnet_id
}

