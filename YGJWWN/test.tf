resource "local_file" "foo" {
    count = var.file_number
    content  = var.content
    filename = var.filename
}

resource "local_file" "hash_map" {
    for_each = var.files
    content = each.value
    filename = each.key
}