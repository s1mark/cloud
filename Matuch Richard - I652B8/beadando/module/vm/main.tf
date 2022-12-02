resource "google_service_account" "service_account" {
  account_id = var.service_account_id
}

resource "google_compute_disk" "attached_disk" {
  name                      = var.disk_name
  type                      = var.disk_type
  zone                      = var.zone
  image                     = var.disk_image
  size                      = var.disk_size
  physical_block_size_bytes = var.disk_block_size
}

resource "google_compute_instance" "compute_vm" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  attached_disk {
    source = google_compute_disk.attached_disk.id
  }

  network_interface {
    network = "default"
  }

  service_account {
    email  = google_service_account.service_account.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/task"
}
