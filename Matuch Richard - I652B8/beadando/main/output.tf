output "project_id" {
  value = data.google_project.my_project.project_id
}

# Reference output from vm module
output "compute_vm_id" {
  value = module.module-i652b8.compute_vm_id
}

output "compute_vm_external_ip" {
  value = module.module-i652b8.compute_vm_external_ip
}