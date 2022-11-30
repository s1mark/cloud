provider "google" {
   project="ekke-cloud"
   region="europe-central2"
}

terraform {
  backend "gcs" {
    bucket = "oa4r7u"
  }
}