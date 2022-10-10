resource "local_file" "test" {
    content  = "foo!"
    filename = "${path.module}/test"
}