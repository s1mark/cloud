module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "ekke-cloud"
  names         = ["FQ4AC3"]
  project_roles = [
    "ekke_coud=>roles/viewer",

  ]
}