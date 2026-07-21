# atbridge

> Your private AI suite for emails, calendars, contacts, notes & tasks — in Thunderbird, over MCP, or from the CLI. Runs on your own machine, works with any AI, no cloud middleman.

**Website:** [atbridge.ai](https://atbridge.ai) · **Docs:** [atbridge.ai/docs](https://atbridge.ai/docs)

atbridge turns Thunderbird into one AI-driven workspace for **emails, calendars, contacts, notes, and tasks** — across every account you already have (Gmail, Outlook, iCloud, self-hosted / IMAP). Manage it all with the AI of your choice — from inside Thunderbird, from Claude Desktop or your IDE over MCP, or from the command line (CLI). MCP and the CLI are separate surfaces: MCP exposes atbridge as tools to an AI client, while the CLI runs atbridge commands directly in your shell, scripts, and CI.

## Why atbridge

- **🔒 Private & local-first.** Everything runs on your machine. Your messages and API keys never route through atbridge's servers — a model only ever receives what you choose to send it.
- **🤖 Any AI, no lock-in.** 12 providers, including a fully private local model via Ollama (see below).
- **🖥️ Three surfaces, one binary.** The built-in @bridge panel in Thunderbird, an MCP server for AI clients and IDEs, and a CLI for scripts and CI.
- **📝 @bridge Notes.** A local markdown workspace with linked notes and voice memos the AI can read and write.
- **⚡ Measurably leaner.** Because it talks to Thunderbird locally instead of proxying your mailbox through a cloud, it's **~20× faster per operation** and **3.5× cheaper per fetch** (72% fewer input tokens) than a cloud Gmail MCP bridge. [Methodology →](https://atbridge.ai/docs/architecture/why-fast-and-cheap)

## Use atbridge as an MCP server

atbridge exposes its mail / calendar / contacts / notes / tasks operations as MCP tools. Add it to any MCP client (Claude Desktop, Cursor, VS Code, JetBrains, Antigravity):

```json
{
  "mcpServers": {
    "atbridge": { "command": "atbridge", "args": ["mcp"] }
  }
}
```

Reads are enabled by default; to unlock write tools (send, reply, forward, move, delete, calendar/contact edits) add `"env": { "ATBRIDGE_ALLOW_WRITES": "1" }` and restart the client. Or let atbridge write the entry for you: `atbridge mcp setup --client claude|cursor|vscode|jetbrains|antigravity`.

> **Requirements:** atbridge is a **local, Thunderbird-native** server — it talks to your running Thunderbird via a native-messaging bridge. It needs Thunderbird + the atbridge add-on installed (`atbridge bridge install`), not a remote endpoint. It is **not** a hosted/cloud server and is **not** distributed via npm/pip — install the signed binary from [atbridge.ai](https://atbridge.ai) first.

Full machine-readable tool reference: [llms-mcp.txt](https://atbridge.ai/llms-mcp.txt) · CLI reference: [llms-cli.txt](https://atbridge.ai/llms-cli.txt)

## Supported AI providers

OpenAI · Anthropic Claude · Google Gemini · Mistral · DeepSeek · Moonshot Kimi · xAI Grok · Groq · OpenRouter · NVIDIA · any OpenAI-compatible endpoint · **Ollama** (fully local, private).

You can also drive the in-Thunderbird @bridge chat with an AI CLI you already have — Claude Code, OpenAI Codex, or Antigravity — using your existing subscription (BYO compute, no API key).

## Install

```sh
# macOS / Linux
curl -fsSL https://atbridge.ai/install.sh | sh

# Windows (PowerShell)
irm https://atbridge.ai/install.ps1 | iex
```

Then install the native bridge into Thunderbird: `atbridge bridge install`. Full setup guides (Claude Desktop, Cursor, and more): [atbridge.ai/docs](https://atbridge.ai/docs).

## Three ways to use it

- **Inside Thunderbird** — the @bridge AI Chat panel, branded HTML email compose, deterministic Skills, and @bridge Notes.
- **Over MCP** — Claude Desktop, Cursor, VS Code, JetBrains, Antigravity, or your own agents. No Thunderbird UI required once the bridge is installed.
- **From the CLI** — every operation scriptable for shell, cron, and CI.

## Pricing

Free to start; **Personal** and **Pro** plans for power users. See [atbridge.ai/pricing](https://atbridge.ai/pricing).

## Links

- Website — https://atbridge.ai
- Documentation — https://atbridge.ai/docs
- LLM-readable overview — https://atbridge.ai/llms.txt

## About

atbridge is a **proprietary, commercial** product distributed as signed binaries for macOS, Linux, and Windows. This repository is the product's public home and documentation; it does not contain the application source. Available in 23 UI languages.

© 2026 atbridge. All rights reserved. Questions: contact@atbridge.ai
