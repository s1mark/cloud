resource "google_compute_instance" "default" {
  name         = var.vm_name
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
}

resource "google_service_account" "default" {
  account_id   = "fo5nvh"
}

service_account {
  email = google_service_account.service_account.email
  scopes = ["monitoring"]
}

metadata_startup_script = "echo done > ~/task"

resource "google_compute_disk" "attached_disk" {
  name  = "fo5nvh"
  type  = "pd-standard"
  zone  = "europe-central2-a"
  image = "debian-11-bullseye-v20220719"
  size = "10"
  physical_block_size_bytes = "4096"
}

attached_disk {
  source = google_compute_disk.attached_disk.id
}