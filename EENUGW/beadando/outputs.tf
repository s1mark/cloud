output "project_number" {
  value = data.google_project.project.number
}

output "project_id" {
  value = data.google_project.project.id
}

output "project_name" {
  value = data.google_project.project.name
}

output "disk_size" {
  value = data.google_compute_disk.disk.size
}

output "disk_image" {
  value = data.google_compute_disk.disk.image
}

output "disk_type" {
  value = data.google_compute_disk.disk.type
}

output "disk_self_link" {
  value = data.google_compute_disk.disk.self_link
}
