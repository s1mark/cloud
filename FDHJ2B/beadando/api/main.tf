module "google_project_service" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 13.0"

  project_id = var.project_id

  activate_apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
  ]
}