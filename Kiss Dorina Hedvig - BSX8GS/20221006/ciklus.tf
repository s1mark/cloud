/*resource "local_file" "test" {
    count = var.file_number
    content  = var.content
    filename = "${path.module}/${var.file_name}-${count.index}"
    lifecycle {
        prevent_destroy = true
    }
}*/

resource "local_file" "map" {
    for_each = var.files
    content = each.value
    filename = each.key
}