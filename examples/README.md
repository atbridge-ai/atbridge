# Example MCP client configs

Drop the atbridge entry into your MCP client's config, then fully quit and
reopen the client.

- **Claude Desktop** — `claude_desktop_config.json` (Settings → Developer → Edit Config).
- **Cursor / VS Code / JetBrains / Antigravity** — use the same `mcpServers` entry
  in the client's MCP settings.

The `command` is `atbridge` (installed from https://atbridge.ai). If your client
can't find it, use the absolute path — `which atbridge` on macOS/Linux, or the
binary at `~/.atbridge/bin/atbridge`.

Remove the `env` block to keep the server **read-only**. With
`ATBRIDGE_ALLOW_WRITES=1`, write tools (send, reply, forward, move, delete,
calendar/contact edits) are unlocked.

Requires Thunderbird + the atbridge add-on: run `atbridge bridge install` once.
See https://atbridge.ai/docs for full setup.
