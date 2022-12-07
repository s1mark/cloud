variable "provider_region" {
    type    = string
    default = "europe-central2"
}

variable "provider_zone" {
    type    = string
    default = "europe-central2-a"
}

variable "project_name" {
    type    = string
    default = "ekke-cloud"
}

variable "vm_instance_type" {
    type    = string
    default = "f1-micro"
}

variable "vm_instance_name" {
    type    = string
    default = "ekke-cloud-diz39o"
}

variable "vm_instance_image" {
    type = string
    default = "debian-cloud/debian-11"
}
variable "vm_network_interface" {
    type = string
    string = "default"
}