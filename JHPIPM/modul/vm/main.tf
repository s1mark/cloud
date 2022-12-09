resource "google_compute_instance" "default" {
  name = var.name
  machine_type = "f1-micro"
  zone = var.zone

  boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}