resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_name
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
  }
}
