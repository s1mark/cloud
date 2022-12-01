module "qlcbh6-module" {
  source = "../create_vm"
  service_account_display_name    = "qlcbh6"
	vm_name                         = "ekke-cloud-qlcbh6"
	disk_name                       = "qlcbh6-disk"
}