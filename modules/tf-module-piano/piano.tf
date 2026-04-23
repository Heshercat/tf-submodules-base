# tf-module-piano/main.tf
variable "name" {
  type    = string
  default = "piano-12"
}

resource "null_resource" "instrument" {
  provisioner "local-exec" {
    command = "echo Playing the ${var.name}"
  }
}

output "instrument_name" {
  value = var.name
}
