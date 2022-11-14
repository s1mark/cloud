module "instance_template" {
  source          = "git::https://github.com/terraform-google-modules/terraform-google-vm//modules/instance_template?ref=v7.9.0"
  region          = var.region
  machine_type    = "f1-micro"
  project_id      = var.project_id
  service_account = var.service_account
  network         = "default"
}

module "compute_instance" {
  source              = "git::https://github.com/terraform-google-modules/terraform-google-vm//modules/compute_instance?ref=v7.9.0"
  region              = var.region
  zone                = var.zone
  hostname            = "ekke-cloud"
  instance_template   = module.instance_template.self_link
  deletion_protection = false
}

module "compute_instance_wgxnp2" {
  source              = "~/WGXNP2/module/VM"
  region              = var.region
  zone                = var.zone
  hostname            = var.hostname
  instance_template   = module.instance_template.self_link
  deletion_protection = false
}
