
resource "google_compute_instance" "default" {

    name         = var.vm_instance_name
    machine_type = var.vm_instance_type
    zone         = var.provider_zone

    boot_disk {
            initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    network_interface {
        network = "default"
    }

}