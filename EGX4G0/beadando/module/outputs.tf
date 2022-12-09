output "vm_instance_id" {
  description = "Outputs the id of the created VM instance."
  value       = google_compute_instance.vm_instance.id
}

output "vm_external_ip" {
  description = "Outputs the external ip of the VM instance."
  value       = google_compute_instance.vm_instance.network_interface.0.network_ip
}