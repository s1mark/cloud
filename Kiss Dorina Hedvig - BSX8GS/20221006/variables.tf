# required
variable "file_number"{}

# optional

/*variable "content" {
    default = "some Text"
}*/

variable "files" {
 type = map
 #type = map(map(any)) --> dokumentáció
    default = {
        first = "First file content"
        second = "Second file content"
        third = "Third file content"
    }
}

variable "file_name" {
    type = string
    default = "test"
}