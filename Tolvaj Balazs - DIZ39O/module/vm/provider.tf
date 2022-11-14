provider "google" {
    project = var.project_name
    region  = var.provider_region
}

terraform {
    backend "gcs" {
        bucket  = "ekke-monday"
        prefix  = "terraform/monday/vm"
    }
}