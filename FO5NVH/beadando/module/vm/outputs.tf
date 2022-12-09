output "vm_name" {
  value = google_compute_instance.default.name
}
output "disk_name" {
  value = google_compute_disk.attached_disk.name
}