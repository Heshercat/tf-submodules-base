# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog, and this project uses semantic versioning where applicable.

## [v3.3.0] - 2026-03-23
### Fixed
- Resolved an issue affecting the simulated piano play workflow in `null_resource`.
- Improved module stability and output consistency.

## [v3.3.0-beta-tests] - 2026-03-23
### Added
- Beta test release for validating `v3.3.0` changes.

## [v3.2.0-beta-tests] - 2026-03-23
### Added
- Beta test release for pre-release validation of module updates.

## [v3.1.0-beta-tests] - 2026-03-23
### Added
- Beta test release for internal testing and verification.

## [v3.0.2] - 2026-03-23
### Fixed
- Minor bug fixes and internal improvements.

## [v3.0.1] - 2026-03-23
### Fixed
- Corrected minor issues in module behavior.

## [v3.0.0] - 2026-03-23
### Changed
- Major version update with internal module improvements and release alignment.

## [v2.1.0] - 2026-03-23
### Added
- Enhanced module behavior and improved output handling.

## [v0.1.4] - 2026-03-23
### Fixed
- Small fixes for module initialization and consistency.

## [v0.1.3] - 2026-03-23
### Added
- Initial public release of `tf-module-piano`.
- Added `null_resource` to simulate playing the piano.
- Added `instrument_name` output.

---

## Overview
This Terraform module initializes a `null_resource` to simulate playing the piano.

## Usage

```hcl
module "piano" {
  source = "./tf-module-piano"
}

output "instrument_name" {
  value = module.piano.instrument_name
}
