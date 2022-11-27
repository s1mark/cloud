provider "google" {
    project = var.project_name
    region = "europe-central2"
}

terraform {
    backend "gcs" {
        bucket  = "wgxnp2"
        prefix  = "terraform/ServiceAccount/"
    }
}