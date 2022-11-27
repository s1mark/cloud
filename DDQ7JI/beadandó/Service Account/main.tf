module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "ekke-cloud"
  names         = var.nep_name
  project_roles = [
    "ekke-cloud=>roles/admin"]
}