# tf-module-guitar

## Overview
This Terraform module initializes a `null_resource` to simulate playing the guitar.
TO DO ---> UPDATE README 
## Usage
```hcl
module "guitar" {
  source = "./tf-module-guitar"
}

output "instrument_name" {
  value = module.guitar.instrument_name
}

