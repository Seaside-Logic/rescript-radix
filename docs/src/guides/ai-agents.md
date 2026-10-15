This site publishes plain-Markdown versions of its pages for AI coding agents such as Claude Code, Cursor and Copilot, following the [llms.txt](https://llmstxt.org) convention.

- [`/llms.txt`](/llms.txt) is an index: a summary of the bindings, the naming rules an agent most often gets wrong, and links to every page.
- [`/llms-full.txt`](/llms-full.txt) is every guide and component page in one file, for agents that take a single document.
- Any guide or component page has a Markdown twin at the same path plus `.md`, for example [`/components/dialog.md`](/components/dialog.md). Component pages include their parts, notes and the full source of the demo.

## Pointing an agent at the docs

Paste the `llms.txt` URL into the conversation, or add it to your project's agent instructions (`CLAUDE.md`, `AGENTS.md`, `.cursorrules`) so it is read before the agent writes Radix code:

```md
For Radix UI in ReScript, use rescript-radix. Read https://<docs-site>/llms.txt before writing code against it.
```

The bindings also ship as ReScript source, so an agent can read `node_modules/rescript-radix/src/<Name>.res` to see exactly which props a part accepts.
