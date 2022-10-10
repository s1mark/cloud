resource "local_file" "foo" {
    content  = "foo"
    filename = ".\\test"
}
resource "local_file" "some_other_file" {
    content  = "value in the file"
    filename = ".\\simple_file"
}