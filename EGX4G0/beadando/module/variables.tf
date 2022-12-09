variable "instance_name" {
  type    = string
  default = "egx4g0-vm"
}
variable "instance_type" {
  type    = string
  default = "f1-micro"
}
variable "disk_zone" {
  type    = string
  default = "europe-central2-a"
}
variable "image" {
  type    = string
  default = "debian-cloud/debian-11"
}
variable "service_account_id" {
  type    = string
  default = "egx4g0-sa"
}
variable "service_account_display_name" {
  type    = string
  default = "egx4g0"
}
variable "disk_name" {
  type    = string
  default = "egx4g0-disk"
}
variable "disk_type" {
  type    = string
  default = "pd-standard"
}
variable "disk_image" {
  type    = string
  default = "debian-11-bullseye-v20220719"
}
variable "disk_size" {
  type    = string
  default = "10"
}
variable "physical_size" {
  type    = string
  default = "4096"
}
variable "vm_zone" {
  type = string
}
variable "vm_type" {
  type = string
}
variable "vm_name" {
  type = string
}