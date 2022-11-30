resource "google_service_account" "service_account" {
    account_id = var.account_id
    display_name = var.display_name
}



resource "google_compute_instance" "default" {
    machine_type = var.machine_type
    name         = var.vm-name
    zone         = var.zone

    service_account {
      email = google_service_account.service_account.email
      scopes = ["monitoring"]
    }
    
    boot_disk {
        initialize_params {
          image = var.disk_image
        }
    }
    network_interface {
      network = "default"
    }
    lifecycle {
      ignore_changes = [attached_disk]
    }

    metadata_startup_script = "echo done > ~/task"
}

resource "google_compute_disk" "default" {
          name = var.disk_name
          type = var.disk_type
          zone = var.disk_zone
          image = var.disk_image
          size = var.disk_size
          physical_block_size_bytes = var.disk_physical_block_size_bytes
}

resource "google_compute_attached_disk" "default" {
        disk = google_compute_disk.default.id
        instance = google_compute_instance.default.id
}
data "google_project" "project" {
}


