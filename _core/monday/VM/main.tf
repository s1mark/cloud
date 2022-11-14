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

module "module-i652b8" {
	source = "../../../Matuch Richard - I652B8/module/vm"
	vm_name = "ekke-cloud-I652B8"
}
