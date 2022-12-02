#Elkészítem a service accountot
resource "google_service_account" "default" {
  account_id   = "qlcbh6"
  display_name = "ekke-cloud-qlcbh6"
}

#Létrehozom a vm forrását
resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      #disk hozzáfűzése a vm-hez
      image = "debian-11-bullseye-v20220719"
    }
  }
#csinálok egy fájlt
  metadata_startup_script = "echo done > ~/task"

#a service account feladatát megadom, monitoroz
  service_account {   
    email  = google_service_account.default.email
    scopes = ["monitoring"]
  }
  #network interface hozzáadása
  network_interface {
    network = "default"
  }
}

#definiálom a disk tulajdonságait
resource "google_compute_disk" "default" {
  name  = "qlcbh6"
  type  = "pd-standard"
  zone  = var.zone
  image = "debian-11-bullseye-v20220719"
  size = 10
  physical_block_size_bytes = 4096
}

#majd a disket attacholom
resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.default.id
  instance = google_compute_instance.default.id
}
data "google_project" "project" {
}
