module "module-i652b8" {
  source             = "../module/vm"
  vm_name            = "ekke-cloud-i652b8"
  disk_name          = "disk-i652b8"
  service_account_id = "sa-i652b8"
}

data "google_project" "my_project" {
}