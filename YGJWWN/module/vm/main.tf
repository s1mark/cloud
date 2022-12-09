resource "google_compute_instance" "default" {
  name         = "${var.app_name}-ygjwwn-vm"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
