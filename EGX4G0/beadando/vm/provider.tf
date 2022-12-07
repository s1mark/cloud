provider "google" {
  project = "ekke-cloud"
  region  = "europe-central2"
}

//remote state file
terraform {
  backend "gcs" {
    bucket = "egx4g0"
    prefix = "EGX4G0/beadando/vm"
  }
}