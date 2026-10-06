# Agent notes

- Static site served by Python's `http.server` from the bind-mounted repo (see `docker-compose.base44.yml`). The repo `Dockerfile` bakes `index.html` into the image, so it is not used for dev.
- No live reload: `http.server` reads files per request, so edits appear on a browser refresh — no restart needed.
- Verify: `curl -s http://localhost:3000/ | grep '<h1>'`.
- Per README, QA changes should only edit the heading in `index.html`.
