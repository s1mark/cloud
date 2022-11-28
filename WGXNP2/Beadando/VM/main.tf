module "service_account" {
  source = "../Modules/ServiceAccount"
}

resource "google_compute_instance" "default" {
  name         = var.compute_instance_name
  machine_type = var.compute_instance_machine_type
  zone         = var.project_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    email = module.service_account.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/task"
}

resource "google_compute_attached_disk" "default" {
  disk     = module.compute_disk.disk_id
  instance = google_compute_instance.default.id
}

module "compute_disk" {
  source = "../Modules/ComputeDisk"
}

data "google_compute_instance" "vm_data" {
  name = google_compute_instance.default.name
  zone = var.project_zone
}