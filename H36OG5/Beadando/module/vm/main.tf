#Service acc., változókból szedi ki
resource "google_service_account" "service_account" {
  account_id = var.service_account_id
}

#Létrehoz 1 lemezt (neve attached_disk), az értékeket a variables-ből szedi ki
resource "google_compute_disk" "attached_disk" {
  name = var.disk_name
  type = var.disk_type
  zone = var.vm_zone
  image= var.disk_image
  size = var.disk_size
  physical_block_size_bytes = var.disk_block_size
}

#Létrehoz egy vm-et
resource "google_compute_instance" "compute_vm" {
  name = var.vm_name
  machine_type = var.vm_type
  zone = var.vm_zone

#Boot disc cuccait beállítja
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

#A létrehozott lemezt csatlakoztatja hozzá
  attached_disk {
    source = google_compute_disk.attached_disk.id
  }

#Létrehozza a hálózati int-et
  network_interface {
    network = "default"
  }

# service acc.-ot csatol hozzá
  service_account {
    email = google_service_account.service_account.email
    scopes = ["monitoring"]
  }

#Fájl létrehozása, root felh. home/task fáljba lesz
  metadata_startup_script = "echo done > ~/task"
}
