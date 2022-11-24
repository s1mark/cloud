provider "google" {
  project = var.project
  region = var.region
}

terraform {
  backend "gcs" {
    bucket = "oa4r7u"
  }
}