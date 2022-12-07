variable "name"{
    description = "The name of the VM"
    type = string
    default = "fq4ac3-beadando"
}
variable "machine_type"{
    description = "The type of machine"
    type = string
    default = "f1-micro"
}
variable "zone" {
    description = "Timezone of the VM"
    type = string
    default = "europe-central2-a"
  
}
variable "image"{
    description = "The image the VM uses"
    type = string
    default = "debian-11-bullseye-v20220719"
}
variable "startup_script" {
  type = string
}