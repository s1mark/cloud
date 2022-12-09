provider "google" {
    project = var.project_name
    region = var.project_zone
}

terraform {
    backend "gcs" {
        bucket  = "wgxnp2"
        prefix  = "terraform/ServiceAccount/"
    }
}