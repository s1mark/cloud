#Required
variable "files" {
  type = map
  first = "first file content"
  second = "second file content"
  third = "third file content"
}


#Optional

variable "content"{
    
}
variable "file_name" {
  type    = string
  default = ".\\test.txt" //ha nem adunk meg értéket, akkor automatikusan ez lesz az értéke
}

