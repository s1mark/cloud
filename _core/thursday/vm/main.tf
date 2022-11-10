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
  depends_on = [module.api]
}

module "api" {
  source = "../api"
}
module "myvm-zh5ed7" {
  source = "../../../ZH5ED7-LGP/modul/vm"
}