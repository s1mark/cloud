provider "google" {
  project = "ekke-cloud"
  region  = "europe-central2"
}

terraform {
  backend "gcs" {
    bucket = "i652b8"
    prefix = "terraform/i652b8"
  }
}