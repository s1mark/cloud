resource "google_compute_instance" "default" {
  machine_type = var.machine-type
  name         = var.vm-name
  zone         = "europe-central2-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
}

