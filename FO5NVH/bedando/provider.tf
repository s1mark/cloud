provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}

terraform {
 backend "gcs" {
   bucket  = "fo5nvh"
   prefix  = "terraform/fo5nvh"
 }
}