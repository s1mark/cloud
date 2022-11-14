resource "google_compute_instance" "default" {
  name         = var.main_name
  machine_type = var.main_mac_tp
  zone         = var.main_zone

  boot_disk {
    initialize_params {
      image = var.main_image
    }
  }

  network_interface {
    network = "default"
  }
}