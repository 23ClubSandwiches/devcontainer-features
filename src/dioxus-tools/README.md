# Dioxus Tools

Installs Dioxus CLI via cargo install through an official installer script.

## Contents

This feature installs Dioxus CLI (`dx`), the command-line tool for the Dioxus web framework. Dioxus is a Rust-based framework for building user interfaces with high performance and developer experience.

### Installed Tools

| Tool | Installation Method |
|------|---------------------|
| `dioxus-cli` (dx) | Prebuilt binary from https://dioxus.dev/install.sh |

### Tool Description

**dioxus-cli (dx)** - The official CLI tool for Dioxus, a performant web framework written in Rust. It provides commands for creating, building, serving, and managing Dioxus applications.

### Dependencies

This feature depends on:
- `common-utils` - For base system utilities
- `rust-tools` - For Rust toolchain and Cargo

### Installation Details

The Dioxus CLI is installed using the official installer script from https://dioxus.dev/install.sh, which handles downloading the appropriate prebuilt binary for the system.

Binaries are installed to `/root/.dx/bin/` and this directory is added to the PATH.

## Usage

Include this feature in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/<your-registry>/dioxus-tools:1.0.1": {}
    }
}
```

Note: This feature requires `rust-tools` to be installed first (which is automatically handled via the dependency system).

After installation, you can use:
- `dx` - Dioxus CLI for creating and managing web applications
- `dx serve` - Start a development server
- `dx build` - Build for production
- `dx create` - Create new Dioxus projects
