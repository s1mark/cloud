resource "google_project_iam_binding" "project" {
  project = "ekke-cloud"
  role    = "roles/viewer"

  members = [
    "user:simark2357@gmail.com"
  ]
}