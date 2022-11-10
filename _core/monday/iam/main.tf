resource "google_project_iam_binding" "project" {
  project = "ekke-cloud"
  role    = "roles/compute.instanceAdmin"

  members = var.users
}

resource "google_project_iam_binding" "osLogin" {
  project = "ekke-cloud"
  role    = "roles/compute.osAdminLogin"

  members = var.users
}

resource "google_project_iam_binding" "iap" {
  project = "ekke-cloud"
  role    = "roles/iap.tunnelResourceAccessor"

  members = var.users
}