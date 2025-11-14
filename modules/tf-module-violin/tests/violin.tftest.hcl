// tests/violin.tftest.hcl
// Tests for tf-module-violin

// 1. Validate default behaviour (no inputs overridden)
run "default_name" {
  command = plan

  // Output should equal the default value of variable "name"
  assert {
    condition     = output.instrument_name == "violin"
    error_message = "Expected instrument_name output to equal default value 'violin'"
  }

  // And it should not be empty
  assert {
    condition     = output.instrument_name != ""
    error_message = "instrument_name output should not be empty"
  }
}

// 2. Validate that overriding `name` propagates to the output
run "custom_name" {
  command = plan

  variables {
    name = "electric_violin"
  }

  assert {
    condition     = output.instrument_name == "electric_violin"
    error_message = "Expected instrument_name output to equal overridden value 'electric_violin'"
  }
}
