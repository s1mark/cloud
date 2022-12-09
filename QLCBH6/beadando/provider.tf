provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}

terraform {
 backend "gcs" {
   bucket  = "qlcbh6"
   prefix  = "terraform/qlcbh6"
 }
}