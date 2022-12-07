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

module "wgxnp2_google_compute_instance" {
  source = "~/WGXNP2/module/VM/"
  compute_instance_name = "wgxnp2-compute-instance"
}

module "vm-eenugw" {
  source       = "../../../EENUGW/module/VM"
  machine_type = "f1-micro"
  vm_name      = "ekke-cloud-eenugw"
}

module "vm-oohq3e" {
  source = "../../../Bagoly Gábor - OOHQ3E/11_14/module/vm"
  vm_name = "ekke-cloud-oohq3e"
}

module "vm-y0dm28" {
  source = "../../../Y0DM28/module/VM"
  network = "default"
}

module "module-i652b8" {
	source = "../../../Matuch Richard - I652B8/module/vm"
	vm_name = "ekke-cloud-I652B8"
}
  
module "vm-dgz4li" {
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

module "diz39o_vm_instance" {
  source = "../../../Tolvaj Balazs - DIZ39O/module/vm"
  machine_type = "f1-micro"
}
