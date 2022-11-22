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

terraform {
  backend "gcs" {
    bucket  = "diz39o"
    prefix  = "terraform/state"
  }
}