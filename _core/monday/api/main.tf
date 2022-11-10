module "project-services" {
  source                      = "git::https://github.com/terraform-google-modules/terraform-google-project-factory//modules/project_services?ref=v14.0.0"
  project_id                  = var.project_id
  enable_apis                 = var.enable
  disable_services_on_destroy = true

  activate_apis = var.activate_apis
}