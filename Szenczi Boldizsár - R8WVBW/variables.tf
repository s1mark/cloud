variable "file_number" {}

variable "content" {
    default = "some text"
}

variable "file_name" {
    type = string
    default = {
        first_file = {
        content = "First file's content"
        filename = "first_file"
        }
        second_file = {
        content = "Second file's content"
        filename = second_file
        }
        third_file = {
        content = "Third file's content"
        filename = third_file
        }
        }
}