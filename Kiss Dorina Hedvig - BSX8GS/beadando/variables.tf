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
  default = "BSX8GS"
}
variable "vm_type" {
  type = string
  default = "f1-micro"
}
variable "zone" {
  type = string
  default = "europe-central2-a"
}
variable "bucket" {
  type = string
  default = "bsx8gs"
}
variable "sa_name" {
  type= string
  default = "Service Account of BSX8GS"
}