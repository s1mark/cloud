output "project_id" {
    value = data.google_project.project.project_id
  
}
output "vm_instance_id" {
  value = module.vm.compute_vm_id

}
output "compute_vm_external_ip" {
  value = module.vm.compute_vm_external_ip
}