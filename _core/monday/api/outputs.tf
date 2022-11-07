output "project_id" {
  value       = module.project-services.project_id
  description = "The GCP project you want to enable APIs on"
}

output "enabled_apis" {
  description = "Enabled APIs in the project"
  value       = [for api in module.project_services : api.service]
}