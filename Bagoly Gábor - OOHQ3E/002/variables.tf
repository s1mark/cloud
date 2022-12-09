#required
//variable "file_number" {
//}
#optional

variable "files" {
  type = map
  default = {
    first = "First file content"
    second = "Second file content"
    third = "Third file content"
  }
}

variable "file_name"{
    type = string
    default = ".\\test.txt"
}
variable "content"{
default = "test"
}