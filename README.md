# terraform-gcp-dns-module

A module for lazy GCP DNS record creation via Terraform.

## Required Input Variables

* `dns_name`: DNS name for the instance
* `dns_root`: DNS name for the managed zone
* `instance_ip_addr`: IP address for the DNS record
* `managed_zone`: A GCP managed zone name
