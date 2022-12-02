module "jhpipm-module" {
  source = "./modul/vm"
  service_account_display_name    = "jhpipm"
	vm_name                         = "ekke-cloud-jhpipm"
	disk_name                       = "jhpipm-disk"
}
