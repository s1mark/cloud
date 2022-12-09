resource "local_file" "foo" {
    count = var.file_number
    content  = var.content
    filename = "${var.file_name}-${count.index}"
}