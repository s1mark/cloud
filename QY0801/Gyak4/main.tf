resource "google_project_service" "project" {
  project = "ekke_cloud"
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}