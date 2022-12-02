module "vm" {
    source = "../module/vm"
    vm_name = "oohq3e-vm"
    vm_type = "f1-micro"
    vm_zone = "europe-central2-a"
    service_account_id = "oohq3e"
}
data "google_project" "project" {
}