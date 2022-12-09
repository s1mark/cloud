resource "google_project_iam_binding" "project" {
  project = "ekke-cloud"
  role    = "roles/viewer"

  members = [
    "user:erdelyi.roland99@gmail.com",
    "user:",
    "user:",
    "user:",
    "user:",
    "user:",
    "user:",
  ]
}
