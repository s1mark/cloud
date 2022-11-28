resource "google_compute_disk" "default" {
  name                      = var.disk_name
  type                      = var.disk_type
  zone                      = var.disk_zone
  size                      = var.disk_size
  image                     = var.disk_image
  physical_block_size_bytes = var.physical_size
}
resource "google_service_account" "default" {
  account_id = var.service_account_id
}
resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }
  lifecycle {
    ignore_changes = [attached_disk]
  }

  service_account {
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/task"
  network_interface {

    network = "default"
  }
}
data "google_compute_instance" "vm_data" {
  name = google_compute_instance.vm_instance.name
  zone = google_compute_instance.vm_instance.zone
}
resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.vm_instance.id
}