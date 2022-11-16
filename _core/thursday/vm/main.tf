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

module "vm-fdhj2b" {
  source = "../../../FDHJ2B/module/vm"
}

module "vm-oa4r7u" {
  source = "../../../OA4R7U/module/vm"
}

module "cl3zhy_vm" {
  source = "../../../CL3ZHY/modul/vm"
}