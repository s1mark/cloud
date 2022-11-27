provider "google" {
  project     = var.project
  region      = var.region
}

terraform {
 backend "gcs" {
   bucket  = "bsx8gs"
   prefix  = "bsx8gs-"
 }
}