resource "google_service_account" "service_account" { //create service account
  account_id   = "axaf1w"
  display_name = "axaf1w"
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }
  network_interface {
    network = "default"
  }
  metadata_startup_script = "echo done > ~/task" //Create a file on the VM
}

resource "google_compute_disk" "default" { //create disk
  name  = var.disk_name
  type  = var.disk_type
  zone  = var.disk_zone
  image = var.disk_image
  size = var.disk_size
  physical_block_size_bytes = var.disk_block_size_bytes
}

resource "google_compute_attached_disk" "default" { //attach disk to VM
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}

data "google_project" "project" {
}