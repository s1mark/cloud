variable "name"{
    description = "The name of the VM"
    type = string
    default = "ekke-cloud-FQ4AC3"
}
variable "machine_type"{
    description = "The type of machine"
    type = string
}
variable "zone" {
    description = "Timezone of the VM"
    type = string
    default = "europe-central2-a"
  
}
variable "image"{
    description = "The image the VM uses"
    type = string
    default = "debian-cloud/debian-11"
}