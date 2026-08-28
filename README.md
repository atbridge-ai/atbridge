# atbridge

> Your private AI suite for emails, calendars, contacts, notes & tasks — in Thunderbird, over MCP, or from the CLI. Runs on your own machine, works with any AI, no cloud middleman.

**Website:** [atbridge.ai](https://atbridge.ai) · **Docs:** [atbridge.ai/docs](https://atbridge.ai/docs)

atbridge turns Thunderbird into one AI-driven workspace for **emails, calendars, contacts, notes, and tasks** — across every account you already have (Gmail, Outlook, iCloud, self-hosted / IMAP). Manage it all with the AI of your choice — from inside Thunderbird, from Claude Desktop or your IDE over MCP, or from the command line (CLI). MCP and the CLI are separate surfaces: MCP exposes atbridge as tools to an AI client, while the CLI runs atbridge commands directly in your shell, scripts, and CI.

## Why atbridge

- **🔒 Private & local-first.** Everything runs on your machine. Your messages and API keys never route through atbridge's servers — a model only ever receives what you choose to send it.
- **🤖 Any AI, no lock-in.** 12 providers, including a fully private local model via Ollama (see below).
- **🖥️ Three surfaces, one binary.** The built-in atbridge panel in Thunderbird, an MCP server for AI clients and IDEs, and a CLI for scripts and CI.
- **📝 atbridge Notes.** A local markdown workspace with linked notes and voice memos the AI can read and write.
- **⚡ Measurably leaner.** Because it talks to Thunderbird locally instead of proxying your mailbox through a cloud, it's measurably faster and cheaper than a cloud Gmail MCP bridge.

## Tools

60+ MCP tools across five domains, talking to your **running** Thunderbird on your own machine — nothing is proxied through a cloud. Read tools are always available; **write** tools (marked ✏️) require `ATBRIDGE_ALLOW_WRITES=1`.

**Mail**
- `mail_list` — list recent messages in a folder, newest first (unread filter)
- `mail_search` — search by free text and/or sender, recipient, folder, date, read state, attachments
- `mail_get` — fetch one message (headers, body, attachment metadata)
- `mail_thread` — fetch a whole conversation thread
- `mail_current` — read the email the user is currently reading in Thunderbird
- `mail_attachments` / `mail_attachment_get` — list attachments and read one (incl. local PDF/XLSX/DOCX text extraction)
- `mail_folders` — all folders across all accounts with unread counts
- `mail_fetch` — trigger a new-mail check now
- `mail_send` ✏️ — compose and send a new message (or draft/template/later)
- `mail_reply` ✏️ — reply to a message
- `mail_forward` ✏️ — forward a message
- `mail_compose` ✏️ — build a branded, themed HTML email from a block layout
- `mail_draft_edit` ✏️ — edit an existing draft in place
- `mail_mark` ✏️ — set read/star/tags (bulk-capable)
- `mail_move` ✏️ — move messages between folders (bulk-capable)
- `mail_delete` ✏️ — trash or hard-delete messages (bulk-capable)
- `mail_empty_trash` ✏️ — empty an account's Trash
- `mail_folder_create` / `mail_folder_rename` / `mail_folder_delete` ✏️ — manage folders

**Calendar**
- `calendar_list` — list all calendars
- `calendar_events_search` — search events in a time window across calendars
- `calendar_events_get` — get one event by id
- `calendar_find_slots` — find free time slots (honours events + working hours)
- `calendar_clash_check` — check whether a proposed slot clashes
- `calendar_settings` — working hours, working days, timezone
- `calendar_refresh` — re-sync CalDAV/ICS calendars now
- `calendar_events_create` ✏️ — create an event (clash-checked; attendees, recurrence)
- `calendar_events_update` ✏️ — update an event or a single occurrence
- `calendar_events_delete` ✏️ — delete an event or occurrence
- `calendar_events_rsvp` ✏️ — respond to an invite (accept/decline/tentative)

**Contacts**
- `contacts_books` — list address books
- `contacts_list` — list contacts across books
- `contacts_search` — search across every field (name, email, phone, org, address, notes)
- `contacts_show` — show one contact by id, email, or name
- `contacts_duplicates` — find cards that are probably the same person
- `contacts_lists` / `contacts_list_members` — mailing lists and their members
- `contacts_create` / `contacts_update` / `contacts_delete` ✏️ — manage contacts
- `contacts_list_create` / `contacts_list_delete` / `contacts_list_add` / `contacts_list_remove` ✏️ — manage mailing lists

**Notes** — a local markdown workspace
- `notes_list` — list or full-text search saved notes
- `notes_get` — read one note by id or title
- `notes_save` ✏️ — save a new markdown note
- `notes_update` ✏️ — edit a note in place
- `notes_move` ✏️ — move or rename a note
- `notes_delete` ✏️ — delete a note

**Tasks**
- `tasks_list` — list to-dos (incomplete by default)
- `tasks_create` ✏️ — create a task (due, priority, recurrence, reminders)
- `tasks_update` ✏️ — update a task
- `tasks_complete` ✏️ — mark a task done (or reopen)
- `tasks_delete` ✏️ — delete a task

Plus `accounts_list` and the branded-email `compose_templates*` / `compose_theme*` tools. Full machine-readable reference: [llms-mcp.txt](https://atbridge.ai/llms-mcp.txt) · CLI reference: [llms-cli.txt](https://atbridge.ai/llms-cli.txt).

## Setup

> **Requirements:** atbridge is a **local MCP server for Thunderbird** — it talks to your running Thunderbird via a native-messaging bridge, not a remote endpoint. It needs Thunderbird + the atbridge add-on, and it is **not** distributed via npm/pip. Install the signed binary from [atbridge.ai](https://atbridge.ai) first.

**1. Install atbridge**

```sh
# macOS / Linux
curl -fsSL https://atbridge.ai/install.sh | sh

# Windows (PowerShell)
irm https://atbridge.ai/install.ps1 | iex
```

**2. Install the Thunderbird bridge** — connects the local server to your running Thunderbird:

```sh
atbridge bridge install
```

**3. Add atbridge to your MCP client** — let atbridge write the config for you:

```sh
atbridge mcp setup --client claude|cursor|vscode|jetbrains|antigravity
```

…or add it by hand:

```json
{
  "mcpServers": {
    "atbridge.ai": { "command": "atbridge", "args": ["mcp"] }
  }
}
```

**4. Unlock write tools (optional)** — reads work out of the box; to allow send / reply / move / delete and calendar/contact edits, add `"env": { "ATBRIDGE_ALLOW_WRITES": "1" }` to the config above and restart the client.

**Setup guides** — step-by-step, per client:

- [Install atbridge](https://atbridge.ai/docs/start/install/)
- [Which connection do I need? (MCP vs CLI)](https://atbridge.ai/docs/setup/)
- [Claude Desktop](https://atbridge.ai/docs/setup/claude-desktop/)
- [Cursor](https://atbridge.ai/docs/setup/cursor/)
- [JetBrains](https://atbridge.ai/docs/setup/jetbrains/)
- [Antigravity](https://atbridge.ai/docs/setup/antigravity/)
- [MCP reference](https://atbridge.ai/docs/reference/mcp/) · [all docs](https://atbridge.ai/docs/)

## Supported AI providers

OpenAI · Anthropic Claude · Google Gemini · Mistral · DeepSeek · Moonshot Kimi · xAI Grok · Groq · OpenRouter · NVIDIA · any OpenAI-compatible endpoint · **Ollama** (fully local, private).

You can also drive the in-Thunderbird atbridge chat with an AI CLI you already have — Claude Code, OpenAI Codex, or Antigravity — using your existing subscription (BYO compute, no API key).

## 📺 Watch

- **Product demo** — [youtube.com/watch?v=EVs0ricxqjw](https://www.youtube.com/watch?v=EVs0ricxqjw)
- **Install guides** — [macOS](https://www.youtube.com/watch?v=r2Ggzm9Sefo) · [Windows](https://www.youtube.com/watch?v=LMVsW8PuR_Q) · [Linux](https://www.youtube.com/watch?v=yDuoZgZ8Ke8)
- **Channel** — [youtube.com/@atbridge](https://www.youtube.com/@atbridge)

## Three ways to use it

- **Inside Thunderbird** — the atbridge AI Chat panel, branded HTML email compose, deterministic Skills, and atbridge Notes.
- **Over MCP** — Claude Desktop, Cursor, VS Code, JetBrains, Antigravity, or your own agents. No Thunderbird UI required once the bridge is installed.
- **From the CLI** — every operation scriptable for shell, cron, and CI.

## Pricing

Free to start; **Personal** and **Pro** plans for power users. See [atbridge.ai/pricing](https://atbridge.ai/pricing).

## Links

- Website — https://atbridge.ai
- Documentation — https://atbridge.ai/docs
- YouTube — https://www.youtube.com/@atbridge
- LLM-readable overview — https://atbridge.ai/llms.txt

## About

atbridge is a **proprietary, commercial** product distributed as signed binaries for macOS, Linux, and Windows. This repository is the product's public home and documentation; it does not contain the application source. Available in 23 UI languages.

© 2026 atbridge. All rights reserved. Questions: contact@atbridge.ai
