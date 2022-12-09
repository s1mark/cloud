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
}

variable "vm_type" {
  type = string
  default = "f1-micro"
}

variable "vm_zone" {
  type = string
  default = "europe-central2-a"
}

variable "service_account_id" {
  type = string
}

variable "disk_name" {
  type = string
  default = "dgz4li"
}

variable "disk_type" {
  type = string
  default = "pd-standard"
}

variable "disk_image" {
  type = string
  default = "debian-11-bullseye-v20220719"
}

variable "disk_size" {
  type = number
  default = 10
}

variable "disk_block_size" {
  type = number
  default = 4096
}