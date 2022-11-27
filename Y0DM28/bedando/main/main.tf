module "y0dm28-module" {
    source                          = "../module/VM"
	service_account_display_name    = var.service_account_name
	vm_name                         = var.vm_name
	disk_name                       = var.disk_name
}