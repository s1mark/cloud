resource "google_service_account" "default" {
  account_id   = "jhpipm"
  display_name = "ekke-cloud-jhpipm"
}

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220719"
    }
  }

  metadata_startup_script = "echo done > ~/task"

  service_account {   
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }
  network_interface {
    network="default"
  }
}

resource "google_compute_disk" "default" {
  name  = "jhpipm"
  type  = "pd-standard"
  zone  = var.zone
  image = "debian-11-bullseye-v20220719"
  size = 10
  physical_block_size_bytes = 4096
}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}
data "google_project" "project" {
}
