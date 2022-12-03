provider "google" {
  project     = var.project_id
  region      = var.provider_region
}

terraform {
 backend "gcs" {
   bucket  = "fq4ac3"
   prefix  = "terraform/fq4ac3"
 }
}