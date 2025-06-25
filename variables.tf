variable "unique_id" {
  type    = string
  default = ""
}

variable "logging_bucket" {
  type    = string
  default = ""
}

variable "enable_tls" {
  type    = bool
  default = true
}

variable "enable_tags_module" {
  description = "Enable the external tagging module"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Optional custom resource tags"
  type        = map(string)
  default     = {}
}
