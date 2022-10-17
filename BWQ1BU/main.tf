resource "google_compute_instance" "default" {
  name         = "ekke_cloud"
  machine_type = "e2-medium"
  zone         = "europe-central2-a"
}