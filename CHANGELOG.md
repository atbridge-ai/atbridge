# Changelog

Notable releases of atbridge — a private AI productivity suite for Thunderbird.
See the README for what it is and how to install.

## 2026-09-02 — Recurring events, clearer plan limits & smarter action items

- **Recurring events, properly** — edit or delete a single occurrence of a
  repeating event, or clear a whole date range at once. A hang on never-ending
  series is fixed too.
- **Clearer limits, instant upgrades** — when your AI client reaches a plan limit
  it now says exactly what's needed and links straight to upgrade, and moving to
  Pro takes effect immediately, with no stale lock-out.
- **Smarter action items** — Extract Action Items now attributes each task to the
  right person and pre-selects the ones that are yours.
- **Your latest mail, everywhere** — "show my newest email" now spans every mailbox
  at once, not just one account.
- **Pick your microphone** — choose exactly which mic atbridge uses for voice.
- **Notes the AI can add to** — the assistant can now append straight onto an
  existing note instead of rewriting it, and it reads and writes your notes
  faster and more efficiently.
- **Updates that wait their turn** — atbridge finishes the operation you're running
  before applying an update, instead of restarting mid-task.

## 2026-08-23 — Rock-solid connections, Windows fixes & signed on macOS

- **Steadier AI connections** — the link between atbridge and your AI client now
  reconnects on its own, recovers cleanly from a hiccup instead of hanging, and
  keeps working even when atbridge updates itself underneath a running session.
- **Windows, sorted** — voice recording now captures properly, atbridge finds your
  AI command-line tool automatically (no manual setup), and updating no longer
  interrupts a client that's mid-conversation.
- **Signed & notarized on macOS** — the app is now Apple Developer ID signed and
  notarized, so it installs without the security warning.
- **Search inside attachments** — find mail by the text inside PDFs and documents,
  and filter your search by attachment.
- **Faster, sharper chat** — everyday questions get answered in a single step, you
  see a richer at-a-glance overview, a provider is checked before it's shown as
  connected, and there's one-click Translate on any open email.
- **Better notes** — full heading levels, notes created right in the folder you
  picked, formatting as you type, and richer image and link support.

## 2026-08-09 — Private voice-to-text, smarter local models & get-started videos

- **Private voice-to-text, built in** — turn speech into text entirely on your own
  machine, with no API key and no audio ever leaving your computer (Pro).
- **More from local models** — run atbridge with a fully private local model (Ollama),
  now including models that can help with your open email and your agenda.
- **Smarter AI event creation** — creating events by chat is smarter and smoother.
- **Get-started videos** — a product demo, per-OS install walkthroughs
  (macOS / Windows / Linux), and an Ollama setup guide.
- **Personal & Pro plans are open** — subscriptions are now available to buy, with
  early-bird pricing.
- **Smoother images & audio in chat** — a more polished experience when you bring an
  image or audio clip into a conversation.
- **Keeping pace across platforms** — ongoing platform and security updates so atbridge
  stays reliable on macOS, Windows, and Linux (including sandboxed Linux setups).

## 2026-07-25 — Smoother setup, one-click updates & everyday polish

- **Updating is now one click** — grab the latest add-on and core from Settings;
  it checks and applies itself in a single restart.
- **A friendlier first run** — setup leads with the free 14-day trial, lays the
  permission switches out clearly, and says in plain words what the AI can do.
- **Installing is easier to follow** — real buttons, a one-tap "Get Thunderbird",
  and a step-by-step walkthrough for adding the add-on.
- **Make your Branded Email yours** — set your brand colours, fonts and signature
  from the CLI, MCP or chat, not only the Settings editor.
- **Find duplicate contacts** — spot the same person across your address books by
  email, phone (in any format), or name.
- **A smarter "next free slot"** — birthdays and holidays no longer black out the
  whole day, so you see the openings you really have.
- **Nicer in dark mode** — clearer contrast on buttons and accents, and a
  consistent on/off toggle everywhere.
- **Steadier on shared computers** — keeps working when someone else is signed in
  with Thunderbird open, and tells you what went wrong instead of quietly retrying.

## 2026-07-21 — Initial public release

atbridge is live at [atbridge.ai](https://atbridge.ai).

- **Emails, calendars, contacts, notes & tasks** inside Thunderbird, across every
  mailbox at once — Gmail, Outlook, iCloud, self-hosted / IMAP.
- **Any AI, no lock-in** — 12 providers: Anthropic Claude, OpenAI GPT, Google
  Gemini, Mistral, DeepSeek, Moonshot Kimi, xAI Grok, Groq, OpenRouter, NVIDIA,
  any OpenAI-compatible endpoint, or a fully private local model via Ollama.
- **Three surfaces** — the built-in atbridge chat panel in Thunderbird, an MCP
  server for AI clients & IDEs (Claude Desktop, Cursor, …), and a CLI for scripts.
- **atbridge Notes** — a local markdown workspace with linked notes and voice
  memos the AI can read from and write to.
- **Private & local-first** — runs on your machine; your mail and API keys never
  route through atbridge's servers.
- macOS, Windows, and Linux · 23 UI languages.
