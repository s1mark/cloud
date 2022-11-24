resource "google_compute_instance" "default" {
    machine_type = var.machine_type
    name         = var.vm-name
    zone         = var.zone
    boot_disk {
        initialize_params {
          name = var.disk_name
          type = var.disk_type
          zone = var.disk_zone
          image = var.disk_image
          size = var.disk_size
          disk_physical_block_size_bytes = var.disk_physical_block_size_bytes
        }
    }
    network_interface {
      network = "default"
    }
}