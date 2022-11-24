resource "google_compute_instance" "default" {

  name         = var.project_neptun_code
  machine_type = var.vm_instance_type
  zone         = var.provider_zone

  network_interface {
    network = var.vm_network_interface
  }

  boot_disk {
    source = google_compute_disk.default.self_link
  }

  # create task file at root user's home folder
  metadata_startup_script = "echo done >> ~/task"

  service_account {
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }
}

resource "google_compute_disk" "default" {
  name  =  var.project_neptun_code
  type  = "pd-standard"
  zone  = var.provider_zone
  image = var.vm_instance_image
  size  = 10
  physical_block_size_bytes = 4096
}

resource "google_service_account" "default" {
  account_id   = var.project_neptun_code
  display_name = var.project_neptun_code
}

terraform {
  backend "gcs" {
    bucket  = "diz39o"
    prefix  = "terraform/state"
  }
}