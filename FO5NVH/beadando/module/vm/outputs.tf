output "vm_name" {
  value = data.google_compute_instance.vm_data.name
}
output "disk_name" {
  value = data.google_compute_disk.attached_disk.name
}