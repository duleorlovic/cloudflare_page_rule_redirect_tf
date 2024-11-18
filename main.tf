# You need to export variables
# export TF_VAR_cloudflare_api_token=123
# ...
# or create terraform.tfvars with all keys
# cloudflare_api_token="123"
variable "cloudflare_api_token" {}
variable "cloudflare_zone_id" {}
variable "cloudflare_target_domain" {}
variable "cloudflare_redirect_url" {}

terraform {
  required_version = ">= 0.13"
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_page_rule" "redirect_mysubdomain" {
  zone_id = var.cloudflare_zone_id
  target  = "https://${var.cloudflare_target_domain}/*"
  actions {
    forwarding_url {
      status_code = 301
      url         = var.cloudflare_redirect_url
    }
  }
}

