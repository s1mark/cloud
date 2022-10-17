resource "local_file" "foo"{
    for_each = var.files
    content = each.value
    filename = each.key
    lifecycle {
      prevent_destroy = true
    }
}