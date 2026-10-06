# Agent notes

- Static site (`index.html`) served by Python's `http.server` on port 3000; no dependencies or secrets.
- `docker-compose.base44.yml` bind-mounts the repo read-only, so edits to `index.html` are live — just refresh the page (no live reload).
- The repo's own `Dockerfile` bakes `index.html` into the image; don't use it for dev.
- Per README, QA changes should only edit the heading in `index.html`.
- Verify: `curl -s localhost:3000/ | grep '<h1>'`.
