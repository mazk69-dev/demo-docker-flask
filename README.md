# demo-docker-flask

A minimal Flask application and Docker demo.

Contents
- app.py: tiny Flask app
- Dockerfile: builds a small image
- docker-compose.yml: development compose setup
- .github/workflows/test.yml: CI that runs pytest
- requirements.txt: pinned dependencies

Quickstart

Build locally:
  docker build -t demo-docker-flask:1.0 .

Run locally:
  docker run --rm -p 5000:5000 demo-docker-flask:1.0

Or using docker compose (development, mounts current dir):
  docker compose up --build

Run tests (locally):
  python -m pip install -r requirements.txt
  pytest

CI
The repository includes a GitHub Actions workflow that runs pytest on push and pull requests.

Change default branch to METVMAZK
To make METVMAZK the repository default branch via the web UI:
1. Go to Settings -> Branches
2. Change Default branch to "METVMAZK"

Or using the GitHub CLI:
  gh repo edit mazk69-dev/demo-docker-flask --default-branch METVMAZK
