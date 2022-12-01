variable "project"{
    type =string
    default="ekke-cloud"    
}
variable "zone" {
  type=string
  default="europe-central2-a"
}
variable "name"{
    type = string
    default = "ekke-cloud-qlcbh6"
}
variable "machine_type" {
  type=string
  default="f1-micro"
}
variable "service_account_display_name" {
  type = string
}
variable "vm_name" {
  type = string
}
variable "disk_name" {
  type = string
}