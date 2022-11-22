provider "google" {
  project = var.project_name
  region  = var.provider_region
}

# resource "google_storage_bucket" "bucket" {
#    name = var.project_neptun_code
#    location = var.provider_location
#    uniform_bucket_level_access = true   
#}

resource "google_compute_disk" "default" {
  name  =  var.project_neptun_code
  type  = "pd-standard"
  zone  = var.provider_zone
  image = var.vm_instance_image
  size  = 10
  physical_block_size_bytes = 4096
}

resource "google_service_account" "default" {
  account_id   = var.project_neptun_code
  display_name = var.project_neptun_code
}

