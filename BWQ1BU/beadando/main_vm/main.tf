module "bwq1bu-module" {
	source                          = "../module/vm"
	service_account_display_name    = "BWQ1BU Service Account"
	vm_name                         = "bwq1bu-vm"
	disk_name                       = "bwq1bu-disk"
}
 