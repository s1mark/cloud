resource "google_compute_instance" "default" {
  machine_type = var.machine-type
  name         = var.vm-name
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
}

