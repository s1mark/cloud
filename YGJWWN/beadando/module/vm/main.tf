# Create service account
resource "google_service_account" "account" {
  account_id = var.service_account_id
}

# Create disk resource
resource "google_compute_disk" "disk" {
  name                      = var.disk_name
  type                      = var.disk_type
  zone                      = var.disk_zone
  image                     = var.disk_image
  size                      = var.disk_size
  physical_block_size_bytes = var.disk_block_size
}

# Create VM resource
resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.vm_type
  zone         = var.vm_zone

  # Define boot disk
  boot_disk {
    initialize_params {
      # Attach disk to vm
      image = google_compute_disk.disk.self_link
    }
  }

  # Define network interface to use
  network_interface {
    network = var.vm_network_interface
  }

  # Attach service account to VM
  service_account {
    email  = google_service_account.account.email
    scopes = ["monitoring"]
  }

  # Create task file upon VM startup and put done inside
  metadata_startup_script = "echo ${var.file_content} > ~/${var.filename}"

}
