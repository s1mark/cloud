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
  source = "https://github.com/s1mark/cloud/blob/ce578e166732cffc08266ceb1deb77f523961372/Juh%C3%A1sz%20Domonkos%20-%20AXAF1W/modul/vm"
}