# Rust Tools

Installs Rust tools from source using rustup.

## Contents

This feature installs the Rust programming language and Cargo package manager via rustup, the official Rust installation tool. It includes the stable Rust toolchain.

### Installed Tools

| Tool | Version | Installation Method |
|------|---------|---------------------|
| `rustup` | Latest | Downloaded from https://sh.rustup.rs |
| `rust` (stable toolchain) | Stable | Via rustup |
| `cargo` | Stable | Via rustup |

### System Dependencies

- `gcc` - GNU Compiler Collection (installed via APT)

### Dependencies

This feature depends on:
- `common-utils` - For base system utilities

## Configuration

The Rust installation is configured with:
- Default toolchain: `stable`
- No PATH modification during installation (`--no-modify-path`)
- Verbose output enabled

## PATH Configuration

Cargo binaries are installed to `/root/.cargo/bin/` and added to the PATH.

## Usage

Include this feature in your `devcontainer.json`:

```json
{
    "features": {
        "ghcr.io/<your-registry>/rust-tools:1.0.1": {}
    }
}
```

After installation, you can use:
- `rustc` - Rust compiler
- `cargo` - Package manager and build tool
- `rustup` - Toolchain manager
