provider "google" {
  credentials = var.service_account_file
  project     = var.project
  region      = var.region
  zone = var.zone
}

resource "google_dns_managed_zone" "zone" {
  name = var.managed_zone
  dns_name = var.dns_root
}

resource "google_dns_record_set" "root-dns" {
  name = var.dns_root
  type = "A"
  ttl  = 60

  managed_zone = var.managed_zone

  rrdatas = [var.instance_ip_addr]
}

resource "google_dns_record_set" "dns" {
  name = var.dns_name
  type = "A"
  ttl  = 60

  managed_zone = var.managed_zone

  rrdatas = [var.instance_ip_addr]
}
