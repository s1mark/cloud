#required
variable "file_number" {}

variable "files" {
  type = map(any)
  default = {
    first_file = "first"
    second_file = "second"
    third_file = "third"
  }
}

#variable "files" {
#  type = map(any)
#  default = {
#    first_file = { 
#        content = "first"
#        filename = "first_file"
#    }
#    second_file = { 
#        content = "second"
#        filename = "second_file"
#    }
#  }
#}

#optional
variable "content" {
    default = "some text"
}

variable "file_name" {
    type    = string
    default = ".\\document.txt"
}