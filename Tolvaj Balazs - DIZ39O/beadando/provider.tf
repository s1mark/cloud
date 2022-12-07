provider "google" {
  project = var.project_name
  region  = var.provider_region
}

# resource "google_storage_bucket" "bucket" {
#    name = var.project_neptun_code
#    location = var.provider_location
#    uniform_bucket_level_access = true   
#}
