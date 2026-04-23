# tf-module-violin/main.tf
variable "name" {
  type    = string
  default = "violin-2"
}

resource "null_resource" "instrument" {
  provisioner "local-exec" {
    command = "echo Playing the ${var.name}"
  }
}

output "instrument_name" {
  value = var.name
}
