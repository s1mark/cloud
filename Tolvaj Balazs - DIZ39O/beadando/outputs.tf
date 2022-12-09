output "gcloud_cpu_info" {
  value = google_compute_instance.default.cpu_platform
}

output "project_id" {
  value = google_compute_instance.default.project
}

output "instance_id" {
  value = google_compute_instance.default.instance_id
}

output "instance_name" {
  value = google_compute_instance.default.name
}

output "external_ip" {
  value = google_compute_instance.default.network_interface.0.network_ip
}