output "info" {
  description = "Basic Known information output regarding region/environment/projectID"
  value = {
    region     = local.region
    env        = local.environment
    prefix     = var.prefix
    project_id = var.project_id
  }
}

output "subnetworks" {
  description = "GCP Subnetwork Detailed Information Output"
  value       = local.subnetwork_map_detail
}

output "management_addresses" {
  description = "VM-Series Firewall Management Addresses"
  value       = module.firewalls.nic1_public_ips
}
