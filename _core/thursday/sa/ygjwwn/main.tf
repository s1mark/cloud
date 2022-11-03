module "service_account" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "ekke-cloud"
  prefix        = "test-sa"
  names         = ["ygjwwn"]
  project_roles = [
    "ekke-cloud=>roles/viewer",
  ]
}