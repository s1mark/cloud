#required
variable "file_number" {
  
}
#optional
variable "files" {
  type = map(any)
  default = {
    first_file  = "First file's content"
    second_file = "Second file's content"
    third_file  = "Third file's content"
  }
}