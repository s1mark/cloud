provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}

terraform {
 backend "gcs" {
   bucket  = "jhpipm"
   prefix  = "terraform/jhpipm"
 }
}