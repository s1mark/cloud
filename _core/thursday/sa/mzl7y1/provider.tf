provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}
terraform {
  backend "gcs" {
    bucket  = "ekke-monday"
    prefix  = "terraform/sa/mzl7y1"
  }
}