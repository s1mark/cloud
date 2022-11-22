provider "google" {
  project     = "ekke-cloud"
  region      = "europe-central2"
}

//https://cloud.google.com/docs/terraform/resource-management/store-state
// "You will have to store your terraform state file in the created bucket"
terraform {
 backend "gcs" {
   bucket  = "bwq1bu"
   prefix  = "terraform/bwq1bu"
 }
}