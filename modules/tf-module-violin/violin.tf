# tf-module-violin/main.tf

# No supported OpenTofu version satisfies this constraint on the testenv, so `auto` has to
# fall back. Used to see what the fallback does and what the UI shows for it.
terraform {
  required_version = "~> 1.4.0"
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
