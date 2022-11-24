output "project_id" {
    value = data.google_project.project.id
}

output "project_name" {
    value = data.google_project.project.name
}

output "vm_name" {
    value = data.google_compute_instance.vm.name
}