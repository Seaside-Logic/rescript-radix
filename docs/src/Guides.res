/** The written guides. Bodies are Markdown files bundled as strings. */

type t = {
  slug: string,
  title: string,
  summary: string,
  body: string,
}

@module("./guides/installation.md?raw") external installation: string = "default"
@module("./guides/usage.md?raw") external usage: string = "default"
@module("./guides/styling.md?raw") external styling: string = "default"
@module("./guides/composition.md?raw") external composition: string = "default"
@module("./guides/ai-agents.md?raw") external aiAgents: string = "default"

let all = [
  {
    slug: "installation",
    title: "Installation",
    summary: "Add the package and configure your ReScript project.",
    body: installation,
  },
  {
    slug: "usage",
    title: "Usage",
    summary: "Compound parts, controlled state, and how Radix props map to ReScript.",
    body: usage,
  },
  {
    slug: "styling",
    title: "Styling",
    summary: "Style primitives with your own CSS and Radix state attributes.",
    body: styling,
  },
  {
    slug: "composition",
    title: "Composition",
    summary: "Render your own elements and components with asChild.",
    body: composition,
  },
  {
    slug: "ai-agents",
    title: "AI Coding Agents",
    summary: "Markdown versions of these docs for Claude Code, Cursor and other agents.",
    body: aiAgents,
  },
]

let find = slug => all->Array.find(guide => guide.slug == slug)
