provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}

terraform {
 backend "gcs" {
   bucket  = "y0dm28"
   prefix  = "terraform/y0dm28"
 }
}