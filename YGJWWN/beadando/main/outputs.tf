output "project_id" {
  description = "Outputs the id of the current Google project."
  value       = data.google_project.project.project_id
}

# Reference output from vm module
output "vm_instance_id" {
  description = "Outputs the id of the created VM instance from vm module"
  value       = module.vm.vm_instance_id
}

output "vm_external_ip" {
    description = "Outputs the external ip of the VM instance."
    value = module.vm.vm_external_ip
}
