//https://github.com/terraform-google-modules/terraform-google-service-accounts

module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "ekke-cloud"
  prefix        = "fo5nvh"
  names         = ["fo5nvh"]
  project_roles = [
    "ekke-cloud=>roles/viewer"
  ]
}