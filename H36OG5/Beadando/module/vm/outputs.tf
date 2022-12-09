#Lementjük a létrehozott vm idjét és ip címét
output "compute_vm_id" {
  value = google_compute_instance.compute_vm.id
}

output "compute_vm_external_ip" {
  value = google_compute_instance.compute_vm.network_interface.0.network_ip
}


