module "service_account" {
  source = "../ServiceAccount"
}

resource "google_compute_instance" "default" {
  name         = var.compute_instance_name
  machine_type = var.compute_instance_machine_type
  zone         = var.compute_instance_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    email = modules.service_account.default.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/task"
}

module "compute_disk" {
  source = "../Modules/ComputeDisk"
}

data "google_compute_instance" "vm_data" {
  name = google_compute_instance.default.name
}