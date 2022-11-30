resource "google_compute_instance" "default" {
  name         = var.neptun_kod
  machine_type = var.vm_mach_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = var.vm_network
  }

  service_account {
    email = google_service_account.service_account.email
    scopes = ["monitoring"]
  }

  attached_disk {
    source = google_compute_disk.attached_disk.id
  }

  metadata_startup_script = "echo done > ~/task"
}

resource "google_service_account" "default" {
  account_id   = var.neptun_kod
}

resource "google_compute_disk" "attached_disk" {
  name  = var.neptun_kod
  type  = var.disk_type
  zone  = var.disk_zone
  image = var.disk_image
  size = var.disk_size
  physical_block_size_bytes = var.disk_block_size
}

