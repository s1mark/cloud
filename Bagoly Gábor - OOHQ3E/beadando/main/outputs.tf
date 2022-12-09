output "project_id" {
    description = "outputting the current project's id"
    value = data.google_project.project.project_id
  
}
output "vm_instance_id" {
  description = "outputting the current vm instance's id"
  value = module.vm.compute_vm_id

}
output "compute_vm_external_ip" {
  description = "outputting the vm's external ip"
  value = module.vm.compute_vm_external_ip
}