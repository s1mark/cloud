resource "google_service_account" "default" {
  account_id   = var.vm_name
  display_name = var.sa_name
  project_id = var.project
}

resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }

    attached_disk {
        source = google_compute_disk.default.id
    }
  }

  network_interface {
    network = "default"
  }

    service_account {
    email  = google_service_account.service_account.email
    scopes = ["monitoring"]
  }

  metadata_startup_script = "echo done > ~/test.txt"
}

resource "google_compute_disk" "default" {
      name = "bsx8gs"
      type = "pd-standard"
      image = "debian-11-bullseye-v20220719"
      zone = var.zone
      size = 10
      physical_block_size_bytes = 4096

  tags = {
    environment = "staging"
  }
}

data "google_compute_instance" "vm_data" {
  name = google_compute_instance.default.name
}
