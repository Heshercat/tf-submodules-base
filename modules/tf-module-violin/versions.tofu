// OpenTofu-specific constraint, to see whether 1.13.x enforces it here while it
// ignores the same constraint in a `terraform` block in violin.tf.
language {
  compatible_with {
    opentofu = "~> 1.4.0"
  }
}
