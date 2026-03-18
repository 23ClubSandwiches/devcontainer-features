# Dev Container Features

## Contents

This repository contains the following features:

### `common-utils`

Installs common utilities and base dependencies for devcontainer features. Updates the system package cache and installs essential GPG keyrings for secure package management.

```jsonc
{
    "image": "debian:latest",
    "features": {
        "ghcr.io/23clubsandwiches/devcontainer-features/common-utils:1.0.1": {}
    }
}
```

### `rust-tools`

Installs Rust programming language and Cargo package manager via rustup. Includes the stable Rust toolchain and GNU Compiler Collection.

Depends on: `common-utils`

```jsonc
{
    "image": "debian:latest",
    "features": {
        "ghcr.io/23clubsandwiches/devcontainer-features/rust-tools:1.0.1": {}
    }
}
```

### `kubernetes-tools`

Installs Kubernetes development tools: `kubectl` for cluster management and `kompose` for converting Docker Compose files to Kubernetes manifests.

Depends on: `common-utils`

```jsonc
{
    "image": "debian:latest",
    "features": {
        "ghcr.io/23clubsandwiches/devcontainer-features/kubernetes-tools:1.0.1": {}
    }
}
```

### `podman-tools`

Installs Podman container runtime and Podman Compose for multi-container orchestration. Podman is a daemonless container engine compatible with Docker.

Depends on: `common-utils`

```jsonc
{
    "image": "debian:latest",
    "features": {
        "ghcr.io/23clubsandwiches/devcontainer-features/podman-tools:1.0.1": {}
    }
}
```

### `dioxus-tools`

Installs Dioxus CLI (`dx`), the command-line tool for the Dioxus web framework. Enables building performant user interfaces with Rust.

Depends on: `common-utils`, `rust-tools`

```jsonc
{
    "image": "debian:latest",
    "features": {
        "ghcr.io/23clubsandwiches/devcontainer-features/dioxus-tools:1.0.1": {}
    }
}
```

## Repo and Feature Structure

Similar to the [`devcontainers/features`](https://github.com/devcontainers/features) repo, this repository has a `src` folder.  Each Feature has its own sub-folder, containing at least a `devcontainer-feature.json` and an entrypoint script `install.sh`. 

```
├── src
│   ├── common-utils
│   │   ├── devcontainer-feature.json
│   │   ├── install.sh
│   │   └── README.md
│   ├── rust-tools
│   │   ├── devcontainer-feature.json
│   │   ├── install.sh
│   │   └── README.md
│   ├── kubernetes-tools
│   │   ├── devcontainer-feature.json
│   │   ├── install.sh
│   │   └── README.md
│   ├── podman-tools
│   │   ├── devcontainer-feature.json
│   │   ├── install.sh
│   │   └── README.md
│   └── dioxus-tools
│       ├── devcontainer-feature.json
│       ├── install.sh
│       └── README.md
```

An [implementing tool](https://containers.dev/supporting#tools) will composite [the documented dev container properties](https://containers.dev/implementors/features/#devcontainer-feature-json-properties) from the feature's `devcontainer-feature.json` file, and execute in the `install.sh` entrypoint script in the container during build time.  Implementing tools are also free to process attributes under the `customizations` property as desired.