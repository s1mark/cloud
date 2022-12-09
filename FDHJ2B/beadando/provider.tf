provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}
terraform {
  backend "gcs" {
    bucket  = "fdhj2b"
    prefix  = "terraform/fdhj2b"
  }
}