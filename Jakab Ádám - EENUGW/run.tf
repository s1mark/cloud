resource "local_file" "run" {
    for_each = var.files
    content = each.value
    filename = each.key

    lifecycle {
        prevent_destroy = true
    }
}
