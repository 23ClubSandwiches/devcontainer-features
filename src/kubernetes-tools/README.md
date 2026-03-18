# Kubernetes Tools

Installs Kubernetes tools from prebuilt binaries.

## Contents

This feature installs essential Kubernetes development tools as prebuilt binaries downloaded from their official release repositories.

### Installed Tools

| Tool | Version | Installation Method |
|------|---------|---------------------|
| `kubectl` | Latest stable | Prebuilt binary from https://dl.k8s.io/ |
| `kompose` | v1.37.0 | Prebuilt binary from GitHub releases |

### Tool Descriptions

**kubectl** - The official Kubernetes command-line tool for controlling Kubernetes clusters. Used for deploying applications, managing clusters, and accessing resources.

**kompose** - A conversion tool that translates Docker Compose files into Kubernetes manifests. Useful for migrating containerized applications to Kubernetes.

### Dependencies

This feature depends on:
- `common-utils` - For base system utilities

## Installation Details

- **kubectl** is downloaded from the official Kubernetes release repository using the latest stable version
- **kompose** is downloaded from the GitHub releases page as a prebuilt Linux amd64 binary

Both tools are installed to `/usr/local/bin/` and made executable.

## Usage

Include this feature in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/<your-registry>/kubernetes-tools:1.0.1": {}
    }
}
```

After installation, you can use:
- `kubectl` - Kubernetes cluster management
- `kompose` - Convert Docker Compose to Kubernetes manifests
##
### Changelog
V1.0.1: First Working Version