#Required
/* variable "file_number" {
} */

#Optional
variable "files" {
  type = map(string)
  default = {
    "first"  = "First file content"
    "second" = "Second file content"
    "third"  = "Third file content"
  }
}

/* variable "content" {
  type    = string
  default = "Test Content"
}

variable "file_name" {
  type    = string
  default = "./test"
} */
