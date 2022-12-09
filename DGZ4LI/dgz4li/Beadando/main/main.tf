module "vm" {
    source = "../module/vm"
    vm_name = "dgz4li-vm"
    vm_type = "f1-micro"
    vm_zone = "europe-central2-a"
    service_account_id = "dgz4li"
}
data "google_project" "project" {
}