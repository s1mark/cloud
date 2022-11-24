module "oa4r7u-module" {
  source = "../module/vm"
  service_accout_display_name = var.service_accout_display_name
  vm_name = var.vm_name
  disk_name = var.disk_name
}