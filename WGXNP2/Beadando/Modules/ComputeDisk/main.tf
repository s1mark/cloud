resource "google_compute_disk" "default" {
  name  = "wgxnp2"
  type  = "pd-standard"
  zone  = "europe-central2-a"
  size = 10
  physical_block_size_bytes = 4096
}