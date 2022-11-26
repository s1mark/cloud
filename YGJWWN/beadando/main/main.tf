# Call vm module
module "ygjwwn_vm" {
  source             = "../module/vm"
  vm_name            = "ygjwwn"
  machine_type       = "f1-micro"
  zone               = "europe-central2-a"
  service_account_id = "ygjwwn"
}

# Define Google project data
data "google_project" "project" {
}
