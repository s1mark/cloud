resource "google_compute_instance" "default" {
  machine_type = "f1-micro"
  name         = "axaf1w"
  zone = "europe-central2-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {}
}