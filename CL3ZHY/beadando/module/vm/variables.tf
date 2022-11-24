variable "project" {
    type = string
    default = "ekke-cloud"
}

variable "region" {
    type = string
    default = "europe-central2" 
}

variable "service_account_id" {
  type = string
  default = "cl3zhy"
}

variable "service_account_name" {
    type = string
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

variable "disk_name" {
    type = string
    default = "cl3zhy"
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

variable "size" {
    type = string
    default = "10"
}

variable "size_bytes" {
    type = string
    default = "4096"
}