#A projekt id-jét menti le
output "project_id" {
    value = data.google_project.project.project_id
}

#A modulban lévő out-ot emeli ki
output "compute_vm_external_ip" {
  value = module.vm.compute_vm_external_ip
}