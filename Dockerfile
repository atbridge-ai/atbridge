# MCP server image for atbridge, used by Glama (https://glama.ai/mcp/servers) to
# verify the server starts and answers MCP introspection (initialize + tools/list).
#
# atbridge is a local MCP server for Thunderbird: it starts and advertises its
# tools here, but *executing* a tool needs Thunderbird + the atbridge add-on on a
# real user's machine (see the README). It is not a hosted/remote server — this
# image exists purely for the automated "does it start & introspect" health check.
FROM debian:bookworm-slim
ARG TARGETARCH=amd64
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl libasound2 \
 && rm -rf /var/lib/apt/lists/* \
 && curl -fsSL "https://atbridge.ai/download/atbridge-linux-${TARGETARCH}" -o /usr/local/bin/atbridge \
 && chmod +x /usr/local/bin/atbridge
ENTRYPOINT ["atbridge", "mcp"]
