resource "local_file" "test" {
    content  = "Test Content!"
    filename = "${path.module}/test"
}