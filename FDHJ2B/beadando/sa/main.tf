module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = var.project_id
  prefix        = ""
  names         = ["fdhj2b"]
  project_roles = ["${var.project_id}=>roles/monitoring.admin"]
}