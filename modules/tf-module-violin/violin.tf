# tf-module-violin/main.tf

# Added on the SCALRCORE-37205 branch so that `tofu-version = auto` has a constraint to
# resolve against. "~> 1.5" allows >= 1.5, < 2.0, so auto picks the highest supported
# OpenTofu version rather than falling back to the default.
terraform {
  required_version = "~> 1.5"
}

variable "name" {
  type    = string
  default = "violin-222"
}

resource "null_resource" "instrument" {
  provisioner "local-exec" {
    command = "echo Playing the ${var.name}"
  }
}

output "instrument_name" {
  value = var.name
}
