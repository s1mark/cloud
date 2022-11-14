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

  module "vm-y0dm28"{
    source = "../../../Y0DM28/module/VM"
  }
}
