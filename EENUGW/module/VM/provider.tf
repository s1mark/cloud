provider "google" {
  project = var.project
  region  = var.region
}

terraform {
 backend "gcs" {
   bucket  = "ekke-monday"
   prefix  = "terraform/monday/vm"
 }
}