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