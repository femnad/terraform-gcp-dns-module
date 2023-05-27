resource "google_dns_record_set" "dns" {
  name = var.dns_name
  type = "A"
  ttl  = 60

  managed_zone = var.managed_zone

  rrdatas = [var.instance_ip_addr]
}
