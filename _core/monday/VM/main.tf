resource "google_compute_instance" "default" {
  name         = "ekke-cloud"
  machine_type = "f1-micro"
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
module "fq4ac3-vm" {
  source = "../../../Utassy Denes - FQ4AC3/module/VM"
  machine_type = "f1-micro"
}