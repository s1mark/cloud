module "instance_template" {
  source          = "git::https://github.com/terraform-google-modules/terraform-google-vm/tree/master//modules/instance_template"
  region          = var.region
  project_id      = var.project_id
  service_account = var.service_account
}

module "compute_instance" {
  source              = "git::https://github.com/terraform-google-modules/terraform-google-vm/tree/master//modules/compute_instance"
  region              = var.region
  zone                = var.zone
  hostname            = "ekke-cloud"
  instance_template   = module.instance_template.self_link
  deletion_protection = false
}

module "instance_template" {
  source                       = "git::https://github.com/terraform-google-modules/terraform-google-vm/tree/master//modules/instance_template"
  project_id                   = var.project_id
  service_account              = var.service_account
}