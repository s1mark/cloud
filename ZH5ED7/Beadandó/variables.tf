variable "account_id"{
    type = string
    default = "zh5ed7"
}

variable "display_name"{
    type = string
    default = "zh5ed7"
}

variable "vm-name"{
    type = string
    default = "zh5ed7"
}

variable "machine_type"{
    type = string
    default = "f1-micro"
}

variable "zone"{
    type = string
    default = "europe-central2-a"
}

variable "disk_name"{
    type = string
    default = "zh5ed7"
}

variable "disk_type"{
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
variable "disk_size"{
    type = number
    default = 10
}
variable "disk_physical_block_size_bytes" {
    type = number
    default = 4096
}

