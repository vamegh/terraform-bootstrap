locals {
  name = "${var.unique_id}-${data.aws_caller_identity.current.account_id}-tfstate"

  # module_tags = var.enable_tags_module ? module.external_tagging.tags : {}
  tags = merge({ Name = local.name }, var.tags)
}
