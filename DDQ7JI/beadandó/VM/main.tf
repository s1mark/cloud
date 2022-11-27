resource "google_compute_instance" "default" {
  name         = var.nep_name
  machine_type = "f1-micro"
  zone         = "europe-central2-a"

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }
  network_interface {
    network = "default"
  }
  metadata_startup_script = "echo done > ~/task" //Create a file on the VM

  attached_disk {
    source = google_compute_disk.default.id
  }

  service_account {
    scopes = ["monitoring"]
  }
}

resource "google_compute_disk" "default" {
  name = var.nep_name
  type = "pd-standard"
  zone = var.disk_zone
  image = var.disk_image
  size = var.disk_size
  physical_block_size_bytes = var.disk_block_size_bytes
}

module "API" {
  source = "../API"
  project_id = var.project_id
}

module "Service_Account" {
  source = "../Service_Account"
  project_id = var.project_id
}