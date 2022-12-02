provider "google" {
  project     = var.project
  region      = var.region
}

terraform {
 backend "gcs" {
   bucket  = "y0dm28"
   prefix  = "terraform/y0dm28"
 }
}