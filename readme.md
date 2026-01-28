# chad-eline.github.io

Personal portfolio site built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Prerequisites

- Python 3.10+
- [uv](https://docs.astral.sh/uv/) package manager

Install uv if you don't have it:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Local Development

### Setup

Clone the repository and install dependencies:

```bash
git clone https://github.com/chad-eline/chad-eline.github.io.git
cd chad-eline.github.io
make venv-sync
```

### Run Locally

Start the development server with live reload:

```bash
make doc-serve
```

The site will be available at `http://127.0.0.1:8000`.

### Build

Build the static site to `site/`:

```bash
make doc-build
```

## Deployment

### GitHub Pages Configuration

1. Go to your repository **Settings > Pages**
2. Under **Build and deployment**, set:
   - **Source**: Deploy from a branch
   - **Branch**: `gh-pages` / `/ (root)`
3. Save the settings

The `gh-pages` branch is created automatically on first deployment.

### Automatic Deployment

The site auto-deploys to GitHub Pages on every push to `main` via the CI workflow.

### Manual Deployment

To deploy manually from your local machine:

```bash
make doc-deploy
```

This runs `mkdocs gh-deploy --force`, which builds the site and pushes it to the `gh-pages` branch.

## Available Commands

Run `make help` to see all available commands:

| Command | Description |
|---------|-------------|
| `make venv-sync` | Install/sync dependencies from lockfile |
| `make doc-serve` | Serve site locally with live reload |
| `make doc-build` | Build the static site |
| `make doc-deploy` | Deploy to GitHub Pages |
| `make clean` | Remove build artifacts |

## License

MIT
