resource "google_compute_instance" "default" {
  name         = "fdhj2b"
  machine_type = "f1-micro"
  zone         = "europe-central2-a"

  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }
  
  attached_disk {
    source = google_compute_disk.default.id
  }

  network_interface {
    network = "default"
  }
  depends_on = [module.api, module.sa]

  metadata_startup_script = "echo done > ~/task"

  service_account {
    email = module.sa.email
    scopes = ["monitoring"]
  }
}

resource "google_compute_disk" "default" {
  name = "fdhj2b-attached-disk"
  type = "pd-standard"
  zone = "europe-central2-a"
  image = "debian-cloud/debian-11-bullseye-v20220719"
  size = 10
  physical_block_size_bytes = 4096
}

module "api" {
  source = "../api"
  project_id = var.project_id
}

module "sa" {
  source = "../sa"
  project_id = var.project_id
}