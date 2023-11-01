# Define the primary AWS provider
provider "aws" {
  alias  = "primary"
  region = "us-east-1"  # Primary region
}

# Define the disaster recovery AWS provider
provider "aws" {
  alias  = "dr"
  region = "us-west-2"  # Disaster recovery region
}

# Module declarations
module "primary_infrastructure" {
  source = "./primary_infrastructure"
}

module "dr_infrastructure" {
  source = "./dr_infrastructure"
  enable_failover = var.enable_failover
}

# Output
output "primary_instance_public_ip" {
  value = module.primary_infrastructure.instance_public_ip
}

output "dr_instance_public_ip" {
  value = module.dr_infrastructure.instance_public_ip
}
