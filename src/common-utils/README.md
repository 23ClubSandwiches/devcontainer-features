# Common Utilities

Installs common utilities and base dependencies for devcontainer features.

## Contents

This feature provides essential base packages and system utilities that other features depend on. It updates the system package cache and ensures proper GPG keyrings are installed for secure package management.

### Installed Packages

| Package | Installation Method |
|---------|----------------------|
| `debian-archive-keyring` | APT (package manager) |
| `debian-keyring` | APT (package manager) |
| `ubuntu-archive-keyring` | APT (package manager) |
| `ubuntu-keyring` | APT (package manager) |

### Additional Actions

- Updates the package cache (`apt-get update`)
- Upgrades all packages to latest versions (`apt-get upgrade`)

## Usage

This feature is typically used as a dependency for other features that require base utilities. You can include it in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/<your-registry>/common-utils:1.0.1": {}
    }
}
```
