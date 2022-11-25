provider "google" {
  project     = var.project
  region      = var.region
}

terraform {
 backend "gcs" {
   bucket  = var.bucket
   prefix  = "bsx8gs-"
 }
}