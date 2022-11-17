resource "google_compute_instance" "default" {
  name         = "ekke-cloud-fdhj2b"
  machine_type = var.machine_type
  zone         = "europe-central2-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }
}