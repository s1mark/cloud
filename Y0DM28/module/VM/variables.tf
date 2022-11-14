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
  default = "default"
}
variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}