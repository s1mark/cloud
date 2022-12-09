provider "google" {
  project = "ekke-cloud"
  region  = "europe-central2"
}

terraform {
  backend "gcs" {
    bucket = "ygjwwn"
    prefix = "terraform/ygjwwn"
  }
}
