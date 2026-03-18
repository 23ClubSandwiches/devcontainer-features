# Podman Tools

Installs Podman container runtime and tools via APT.

## Contents

This feature installs Podman, a daemonless container engine that is a drop-in replacement for Docker, along with Podman Compose for multi-container orchestration.

### Installed Packages

| Package | Installation Method |
|---------|---------------------|
| `podman` | APT (package manager) |
| `podman-compose` | APT (package manager) |

### Tool Descriptions

**podman** - A daemonless container engine for developing, managing, and running containers. It is compatible with Docker images and commands, making it a direct Docker replacement.

**podman-compose** - A tool for defining and running multi-container Docker applications using Podman. It reads Compose file format and orchestrates containers accordingly.

### Dependencies

This feature depends on:
- `common-utils` - For base system utilities

## Usage

Include this feature in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/<your-registry>/podman-tools:1.0.1": {}
    }
}
```

After installation, you can use:
- `podman` - Container management (compatible with Docker CLI)
- `podman compose` - Multi-container orchestration
##
### Changelog
V1.0.1: First Working Version