resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
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