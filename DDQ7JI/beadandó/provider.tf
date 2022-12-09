provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}
terraform {
  backend "gcs" {
    bucket  = "ddq7ji"
    prefix  = "terraform/ddq7ji"
  }
}