module "project-services" {
  source                      = "terraform-google-modules/service-accounts/google"
  project_id                  = var.project_id
  enable_apis                 = var.enable
  disable_services_on_destroy = true

  activate_apis = var.activate_apis
}