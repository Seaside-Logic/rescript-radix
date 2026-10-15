/** Plain-Markdown copies of the site for AI coding agents, following https://llmstxt.org.
`vite.config.js` emits each file at its path, so `/guides/usage` has a Markdown twin at
`/guides/usage.md`, with `/llms.txt` indexing them and `/llms-full.txt` joining them. */

let summary = "Unofficial ReScript React bindings for Radix Primitives: Radix's accessible, unstyled React components with typed props and an API that stays close to Radix."

let details = `Key facts for writing code against these bindings:

- Install with \`npm install rescript-radix radix-ui\` and add \`"rescript-radix"\` to \`dependencies\` in \`rescript.json\`. Requires rescript 12, @rescript/react 0.15, react 19, radix-ui 1.8.
- Every primitive is a module under the \`Radix\` namespace and its parts are submodules: \`<Radix.Dialog.Root>\`, \`<Radix.Dialog.Trigger>\`. Part names match Radix's.
- \`open\` and \`type\` are ReScript keywords, so those props are \`open_\` and \`type_\`. \`aria-label\` is \`ariaLabel\`.
- Finite string props are polymorphic variants: \`side=#bottom\`, \`orientation=#vertical\`, \`dir=#rtl\`.
- Radix roots whose \`type\` prop changes the value shape are split in two: \`Accordion.Single\` / \`Accordion.Multiple\`, \`ToggleGroup.Single\` / \`ToggleGroup.Multiple\`, \`Toolbar.ToggleGroupSingle\` / \`Toolbar.ToggleGroupMultiple\`. They still take \`type_=#single\` or \`type_=#multiple\`.
- Checkbox state is \`Radix.Shared.checkedState\`: \`Bool(true)\`, \`Bool(false)\` or \`Indeterminate\`.
- Each part binds only the props Radix documents for it, plus \`asChild\`, \`className\`, \`style\`, \`id\`, \`ref\` and \`children\`. For any other HTML attribute, pass \`asChild=true\` and render your own element.
- Primitives are unstyled. Style them with \`className\` and Radix's \`data-state\` and similar attributes.`

let siteUrl = "https://rescript-radix.dev"

let mdPath = href => `${href}.md`

let link = (~title, ~href, ~description) => `- [${title}](${siteUrl}${mdPath(href)}): ${description}`

let guideMarkdown = (guide: Guides.t) => `# ${guide.title}

> ${guide.summary}

${guide.body->String.trim}
`

let componentMarkdown = (entry: Catalog.t) => {
  let parts = entry.parts->Array.map(part => `\`Radix.${entry.name}.${part}\``)->Array.join(", ")
  let notes = switch entry.notes {
  | Some(notes) => `\n## Notes\n\n${notes->String.trim}\n`
  | None => ""
  }
  let example = switch Catalog.demoSource(entry) {
  | Some(source) => `\n## Example\n\n\`\`\`rescript\n${source->String.trim}\n\`\`\`\n`
  | None => ""
  }
  `# ${entry.title}

> ${entry.description}

Parts: ${parts}

Radix documentation: ${Catalog.radixUrl(entry)}
${notes}${example}`
}

let guidePath = (guide: Guides.t) => Route.toHref(Guide(guide.slug))
let componentPath = entry => Route.toHref(Component(Catalog.slug(entry)))

let section = (title, lines) => `## ${title}\n\n${lines->Array.join("\n")}`

let entryLinks = entries =>
  entries->Array.map(entry =>
    link(~title=entry.Catalog.title, ~href=componentPath(entry), ~description=entry.description)
  )

let index = [
  `# rescript-radix\n\n> ${summary}\n\n${details}`,
  section(
    "Guides",
    Guides.all->Array.map(guide =>
      link(~title=guide.title, ~href=guidePath(guide), ~description=guide.summary)
    ),
  ),
  section("Components", entryLinks(Catalog.components)),
  section(
    "Optional",
    [
      ...entryLinks(Catalog.utilities),
      "- [Radix Primitives documentation](https://www.radix-ui.com/primitives/docs): Behavior and accessibility details of the underlying React components",
    ],
  ),
]->Array.join("\n\n")

let pages = [
  ...Guides.all->Array.map(guide => (mdPath(guidePath(guide)), guideMarkdown(guide))),
  ...Catalog.all->Array.map(entry => (mdPath(componentPath(entry)), componentMarkdown(entry))),
]

let full =
  [`# rescript-radix\n\n> ${summary}\n\n${details}`, ...pages->Array.map(((_, md)) => md)]->Array.join(
    "\n\n---\n\n",
  )

/** Site path (with leading slash) to file contents. */
let files = [("/llms.txt", index ++ "\n"), ("/llms-full.txt", full), ...pages]
