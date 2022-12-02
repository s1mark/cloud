module "vm" {
    source = "../module/vm"
    vm_name = "oa4r7u-vm"
    vm_type = "f1-micro"
    vm_zone = "europe-central2-a"
    service_account_id = "oa4r7u"
}
data "google_project" "project" {
}