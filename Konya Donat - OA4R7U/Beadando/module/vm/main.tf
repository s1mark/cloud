resource "google_service_account" "default" {
  account_id = var.account_id
  display_name = var.display_name
}

resource "google_compute_instance" "default" {
  name = var.vm_name
  machine_type = var.machine_type
  zone = var.zone


  boot_disk {
    initialize_params {
        image = var.disk_image
    }
  }

  metadata_startup_script = "echo test > ~/test.txt"

  service_account {
    email = google_service_account.default.email
    scopes = [ "monitoring" ]
  }
}

resource "google_compute_disk" "default" {
  name = var.disk_name
  type = var.disk_type
  zone = var.zone
  image = var.disk_image
  size = var.disk_size
  physical_block_size_bytes = var.disk_block_size_bytes
}

resource "google_compute_attached_disk" "default" {
  disk = google_compute_disk.default.id
  instance = google_compute_disk.default.id
}

data "google_project" "project" {
  
}