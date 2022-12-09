provider "google" {
  project = var.project_name
  region  = var.project_region
}

terraform {
  backend "gcs" {
    bucket = "qy0801-bucket-tfstate"
  }
}
