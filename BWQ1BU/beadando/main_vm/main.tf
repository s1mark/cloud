module "bwq1bu-mod" {
	source                          = "../module/vm"
	service_account_display_name    = var.sa_display_name
	vm_name                         = var.vm_name
	disk_name                       = var.disk_name
}
 