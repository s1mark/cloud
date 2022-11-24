output "project_number" {
  value = data.google_project.project.number
}

output "project_id" {
  value = data.google_project.project.project_id
}

output "sa_email" {
  value = module.vm.sa_email
}