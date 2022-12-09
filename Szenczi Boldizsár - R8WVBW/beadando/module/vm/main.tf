resource "google_service_account" "default" {
  account_id   = "r8wvbw"
  display_name = "ekke-cloud-r8wvbw"
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

  network_interface {
      network = "default"
    }

  service_account {   
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }
}

resource "google_compute_disk" "default" {
  name  = "r8wvbw"
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
