module "cl3zhy_module" {
  source = "../module/vm"
  service_account_name = var.account_display_name
  vm_name = var.vm_name
  disk_name = var.disk_name
}