output "neptun_code" {
  value = "QY0801"
}
output "name" {
  value = "Erdélyi Roland"
}
output "vm_name" {
  value = data.google_compute_instance.project_vm_data.id
}
output "vm_zone" {
  value = data.google_compute_instance.project_vm_data.zone
}
