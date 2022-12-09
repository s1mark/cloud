resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }
  /*
  metadata = {
    startup_script = var.startup_script
  }
  */

  service_account {
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/task"
}
module "Service_account" {
  source = "../ServiceAcc"
}

resource "google_compute_disk" "disk" {
  name  = var.name
  type  = "pd-standard"
  zone  = var.zone
  image = var.image
  size = 10
  physical_block_size_bytes = 4096
}