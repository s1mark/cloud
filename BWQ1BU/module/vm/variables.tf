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
  description = "The name of the Virtual Machine."
}
variable "vm_type" {
  type = string
  default = "f1-micro"
}
variable "zone" {
  type = string
  default = "europe-central2-a"
}