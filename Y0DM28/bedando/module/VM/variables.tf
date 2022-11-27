variable "project" {
  type = string
  default = "ekke-cloud"
}
variable "region" {
  type = string
  default = "europe-central2"
}
variable "vm_name" {
  type = string
  default = "ekke-cloud-Y0DM28"
}
variable "vm_type" {
  type = string
  default = "f1-micro"
}
variable "zone" {
  type = string
  default = "europe-central2-a"
}
variable "network" {
  type = string
  description = "the value of the network"
}
variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}
variable "service_account_id" {
    type = string
    default = "y0dm28"
} 
variable "service_account_display_name" {
    type = string
}
variable "disk_name" {
    type = string
}
variable "disk_type" {
    type = string
    default = "pd-standard"
}
variable "disk_zone" {
    type = string
    default = "europe-central2-a"
}
variable "disk_image" {
    type = string
    default = "debian-11-bullseye-v20220719"
}
variable "disk_size" {
    type = string
    default = "10"
}
variable "disk_block_size_bytes" {
    type = string
    default = "4096"
}