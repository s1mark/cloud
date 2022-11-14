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
