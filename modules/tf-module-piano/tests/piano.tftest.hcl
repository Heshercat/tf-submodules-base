// tests/piano.tftest.hcl
// Fails by design, so failure-behavior can be checked on a module of its own.

run "default_name_fails_on_purpose" {
  command = plan

  assert {
    condition     = output.instrument_name == "this-assertion-fails-on-purpose"
    error_message = "Fails on purpose for SCALRCORE-37205 failure-behavior checks"
  }
}
