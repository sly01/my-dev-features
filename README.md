# My Dev Container Features Collection

This repository contains a collection of Dev Container Features that can be added to any project to extend its capabilities.

## Available Features

| Feature | ID | Description |
| :--- | :--- | :--- |
| **Install jq** | `install-jq` | Installs the jq JSON processor (latest or specific version). |
| **(Your Next Feature)** | `...` | ... |

## Usage

To use a feature from this collection, add the following to your `devcontainer.json`. 

```json
{
    "features": {
        "ghcr.io/sly01/my-dev-features/install-jq:1": {
            "version": "latest"
        }
    }
}
