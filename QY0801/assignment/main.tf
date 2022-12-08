resource "google_service_account" "default" {
  account_id   = "qy0801-assignment"
  display_name = var.project_serviceaccount_owner
}

resource "google_compute_disk" "default" {
  name                      = "qy0801-attached"
  type                      = "pd-standard"
  image                     = "debian-cloud/debian-11-bullseye-v20220719"
  zone                      = var.project_zone
  size                      = 10
  physical_block_size_bytes = 4096

}

resource "google_compute_instance" "default" {
  name         = var.project_vm_name
  machine_type = var.project_vm_type
  zone         = var.project_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }

  }

  attached_disk {
    source = google_compute_disk.default.id
  }

  network_interface {
    network = "default"
  }

  service_account {
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = <<SCRIPT
    echo "done" > task
  SCRIPT

}

data "google_compute_instance" "project_vm_data" {
  name = google_compute_instance.default.name
  zone = google_compute_instance.default.zone
}
