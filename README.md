# terraform-gcp-dns-module

https://registry.terraform.io/modules/femnad/dns-module/gcp

A module for lazy GCP DNS record creation via Terraform.

## Required Input Variables

* `dns_name`: DNS name for the instance
* `instance_ip_addr`: IP address for the DNS record
* `managed_zone`: A GCP managed zone name
