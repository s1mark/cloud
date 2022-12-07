module "vm" {
    source = "../module"
    vm_name = "egx4g0"
    vm_type = "f1-micro"
    vm_zone = "europe-central2-a"
    service_account_id = "egx4g0"
}