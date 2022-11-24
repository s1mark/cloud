module "google_service_account" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = var.project_id
  prefix        = ""
  names         = ["cl3zhy"]
  project_roles = ["${var.project_id}=>roles/monitoring.admin"]
}

resource "google_compute_instance" "default" {
  name = var.vm_name
  machine_type = var.vm_type
  zone = var.vm_zone

  boot_disk {
    initialize_params {
        image = var.disk_image
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = "echo done_cl3zhy > ~/test.txt"

  service_account {
    email = module.google_service_account.email
    scopes = ["monitoring"]
  }
}

resource "google_compute_disk" "default" {
  name = var.disk_name
  type = var.disk_type
  zone = var.disk_zone
  image = var.disk_image
  size = var.size
  physical_block_size_bytes = var.size_bytes
}

resource "google_compute_attached_disk" "default" {
  disk = google_compute_disk.default.id
  instance = google_compute_disk.default.id
}

data "google_project" "project" {}

data "google_compute_instance" "vm" {
  name = resource.google_compute_instance.default.name
  zone = resource.google_compute_instance.default.zone
}