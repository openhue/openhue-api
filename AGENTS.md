# AGENTS.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

OpenHue is an OpenAPI 3.0.3 specification for the Philips Hue CLIP (Connected Lighting Interface Protocol) API v2. This repository does not contain application code—it consists entirely of YAML files defining the API specification.

## Build & Development Commands

```bash
make setup    # Install Redocly CLI globally via npm
make verify   # Lint and validate the OpenAPI specification
make build    # Bundle specification into build/openhue.yaml
make docs     # Generate static HTML documentation in build/
make clean    # Remove the build/ directory
make help     # List all available make targets
```

Alternatively, use Redocly CLI directly:
```bash
redocly lint                              # Validate specification
redocly bundle src/main.yaml -o out.yaml  # Bundle to single file
redocly build-docs -o out.html            # Generate docs
```

## Architecture

### Entry Point
- `src/main.yaml` - Root OpenAPI specification defining paths, tags, servers, and security schemes

### Directory Structure
Each Hue API resource has its own directory under `src/`:
```
src/{resource}/
├── {resource}.yaml              # Collection endpoint (GET all, POST)
├── {resource}_{id}.yaml         # Item endpoint (GET/PUT/DELETE by ID)
└── schemas/                     # Resource-specific schemas
```

Resources: `auth`, `bridge`, `bridge_home`, `device`, `device_power`, `grouped_light`, `light`, `light_level`, `motion`, `resource`, `room`, `scene`, `smart_scene`, `temperature`, `zone`

### Shared Components
- `src/common/` - Reusable schemas (ApiResponse, error responses, Brightness, Color, Dimming, etc.)

### Testing
- `http/` - IntelliJ HTTP Client files for manual endpoint testing
- Requires `http/http-client.private.env.json` with your bridge's apiKey and baseUrl

## Specification Conventions

- OpenAPI version: 3.0.3
- Authentication: `hue-application-key` header (API key)
- All paths reference external YAML files via `$ref`
- Error responses defined in `src/common/error.yaml` and reused across endpoints

## Code Style

- 2-space indentation (YAML)
- LF line endings
- Trailing newline required
- Trim trailing whitespace
