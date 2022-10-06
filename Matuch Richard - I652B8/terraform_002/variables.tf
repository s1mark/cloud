#required
variable "file_number" {}

#optional
variable "content" {
  default = "some text"
}

variable "file_name" {
  type    = string
  default = ".\\document.txt"
}

variable "files" {
  type = map(any)
  default = {
    first_file  = "First file's content"
    second_file = "Second file's content"
    third_file  = "Third file's content"
  }
}

variable "map_map" {
  type = map(map(string))
  default = {
    map0 = {
      first_file  = "First file's content"
      second_file = "Second file's content"
      third_file  = "Third file's content"
    }
    map2 = {
      first_file  = "First file's content"
      second_file = "Second file's content"
      third_file  = "Third file's content"
    }
  }
}