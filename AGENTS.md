# Agent notes

- Static site (`index.html`) served by Python's `http.server`; no dependencies, no secrets.
- Base44 dev setup: `docker compose -f docker-compose.base44.yml up -d` bind-mounts the repo, so edits to `index.html` show on browser refresh (no live reload).
- The repo's `Dockerfile` bakes `index.html` into the image — don't use it for development.
- Verify: `curl -s localhost:3000/` returns the page with the `<h1>` heading.
