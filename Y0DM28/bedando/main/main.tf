module "y0dm28-module" {
  source                          = "../module/vm"
	service_account_display_name    = "Y0DM28"
	vm_name                         = "ekke-cloud-Y0DM28"
	disk_name                       = "y0dm28-disk"
}