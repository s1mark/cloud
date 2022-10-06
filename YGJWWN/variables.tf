#required
variable "file_number" {}

variable "files" {
    type = map
    default = {
        first = "First file content"
        second = "Second file content"
        third = "Third file content"
    }
}

variable "content" {
    default = "Content Text"
}

variable "filename" {
    type = string
    default = "testFileName"
}