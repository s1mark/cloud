provider "google" {

  project = var.project_id
  region  = var.region
}

resource "google_compute_address" "ip_address" {
  name = "external-ip"
}
module "instance_template" {
  source                       = "git::https://github.com/terraform-google-modules/terraform-google-vm/tree/master//modules/instance_template"
  project_id                   = var.project_id
  service_account              = var.service_account
  name_prefix                  = ""
}