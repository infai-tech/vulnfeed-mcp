# Minimal MCP server container — enables Glama auto-introspection.
# Production users install via `pip install vulnfeed-mcp`.
FROM python:3.12-slim

WORKDIR /app

# Install from PyPI (matches the published package, no source build needed).
RUN pip install --no-cache-dir vulnfeed-mcp==0.3.3

# stdio MCP server — Glama and other clients pipe to/from stdin/stdout.
ENTRYPOINT ["vulnfeed-mcp"]
