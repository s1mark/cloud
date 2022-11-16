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

module "vm-y0dm28"{
  source = "../../../Y0DM28/module/VM"
  network = "default"
}
  
module "vm-dgz4li"{
  source = "../../../DGZ4LI/dgz4li/module/vm"
  vm_name = "ekke-cloud-DGZ4LI"
}

module "ddq7ji_vm" {
  source = "../../../DDQ7JI/module/vm"
}

module "vm-bwq1bu" {
  source = "../../../BWQ1BU/module/vm"
  vm_name = "ekke-cloud-bwq1bu"
}
module "fq4ac3-vm" {
  source = "../../../Utassy Denes - FQ4AC3/module/VM"
  machine_type = "f1-micro"
}