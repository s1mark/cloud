module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "ekke-cloud"
  prefix        = "jhpipm"
  names         = ["JHPIPM"]
  project_roles = [
    "ekke-cloud=>roles/viewer"
  ]
}