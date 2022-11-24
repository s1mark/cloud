provider "google" {
  project = var.project
  region = var.region
}


terraform {
  backend "gcs" {
    bucket = "cl3zhy"
  }
}