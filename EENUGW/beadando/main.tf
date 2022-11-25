resource "google_compute_instance" "instance" {
  name         = var.vm_instance_name
  machine_type = var.vm_machine_type
  zone         = var.project_zone

  boot_disk {
    source = google_compute_disk.disk.self_link
  }

  network_interface {
    network = "default"
  }

  service_account {
    email  = google_service_account.service_account.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo ${var.file_content} >> ${var.file_name}"
}

resource "google_service_account" "service_account" {
  account_id   = var.neptun_code
  display_name = "EENUGW"
}

resource "google_compute_disk" "disk" {
  name                      = var.neptun_code
  type                      = var.disk_type
  zone                      = var.project_zone
  image                     = var.disk_image
  size                      = 10
  physical_block_size_bytes = 4096
}

data "google_project" "project" { 

}

data "google_compute_disk" "disk" { 
  name = var.neptun_code
  zone = var.project_zone
}

terraform {
  backend "gcs" {
    bucket  = "eenugw"
    prefix  = "terraform/state"
  }
}
