terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws   = ">= 3.59.0"
    local = ">= 1.4"
  }
}

#module "external_tagging" {
#  count  = var.enable_tags_module ? 1 : 0
#  source = "https://github.com/vamegh/terraform-tags.git?ref=v1.0.0"
#
#  tags = var.tags
#}

