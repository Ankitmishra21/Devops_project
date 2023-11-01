output "primary_instance_public_ip" {
  value = module.primary_infrastructure.instance_public_ip
}

output "dr_instance_public_ip" {
  value = module.dr_infrastructure.instance_public_ip
}
