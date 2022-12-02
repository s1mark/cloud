# Call vm module
module "vm" {
  source             = "../module/vm"
  vm_name            = "ygjwwn"
  vm_type       = "f1-micro"
  vm_zone               = "europe-central2-a"
  service_account_id = "ygjwwn"
}

# Define Google project data
data "google_project" "project" {
}
