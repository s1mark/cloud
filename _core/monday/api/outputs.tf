output "project_id" {
  value       = module.project-services.project_id
}

output "enabled_apis" {
  value       = [for api in module.project_services : api.service]
}