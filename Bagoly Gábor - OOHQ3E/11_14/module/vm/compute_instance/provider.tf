terraform {
  backend "gcs" {
    bucket  = "ekke-monday"
    prefix  = "terraform/monday/VM/compute_instance"
  }
}