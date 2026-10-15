/** Every bound primitive: what the sidebar lists and each component page renders. */

type kind = Component | Utility

type t = {
  /** The module under `Radix`, e.g. `DropdownMenu`. */
  name: string,
  title: string,
  kind: kind,
  description: string,
  parts: array<string>,
  demo?: React.element,
  /** Markdown shown under "Notes". */
  notes?: string,
}

let slug = entry => entry.title->String.toLowerCase->String.replaceAll(" ", "-")

let radixUrl = entry => {
  let section = switch entry.kind {
  | Component => "components"
  | Utility => "utilities"
  }
  `https://www.radix-ui.com/primitives/docs/${section}/${slug(entry)}`
}

// Vite inlines each demo file's text at build time, so the code shown is exactly the code running.
let demoSources: Dict.t<string> = %raw(`import.meta.glob("./demos/*.res", {query: "?raw", import: "default", eager: true})`)

let demoSource = entry => demoSources->Dict.get(`./demos/${entry.name}Demo.res`)

let menuParts = [
  "Root", "Trigger", "Portal", "Content", "Arrow", "Group", "Label", "Item", "CheckboxItem",
  "RadioGroup", "RadioItem", "ItemIndicator", "Separator", "Sub", "SubTrigger", "SubContent",
]

let dismissNote = `Dismissal callbacks such as \`onInteractOutside\` receive a \`Radix.Shared.dismissEvent\`. Call \`Radix.Shared.preventDefault\` on it to keep the content open.`

let all = [
  {
    name: "Accordion",
    title: "Accordion",
    kind: Component,
    description: "A vertically stacked set of headings that each reveal a section of content.",
    parts: ["Single", "Multiple", "Item", "Header", "Trigger", "Content"],
    demo: <AccordionDemo />,
    notes: `Radix's \`Root\` takes \`type="single"\` with a \`string\` value or \`type="multiple"\` with an \`array<string>\` value. These are bound as separate parts, \`Accordion.Single\` and \`Accordion.Multiple\`, and still take \`type_\` so the JSX reads like Radix's.`,
  },
  {
    name: "AlertDialog",
    title: "Alert Dialog",
    kind: Component,
    description: "A modal dialog that interrupts the user with important content and expects a response.",
    parts: ["Root", "Trigger", "Portal", "Overlay", "Content", "Title", "Description", "Action", "Cancel"],
    demo: <AlertDialogDemo />,
  },
  {
    name: "AspectRatio",
    title: "Aspect Ratio",
    kind: Component,
    description: "Displays content within a chosen ratio.",
    parts: ["Root"],
    demo: <AspectRatioDemo />,
  },
  {
    name: "Avatar",
    title: "Avatar",
    kind: Component,
    description: "An image element with a fallback for representing the user.",
    parts: ["Root", "Image", "Fallback"],
    demo: <AvatarDemo />,
    notes: `\`Image.onLoadingStatusChange\` receives \`Radix.Avatar.loadingStatus\`: \`#idle\`, \`#loading\`, \`#loaded\` or \`#error\`.`,
  },
  {
    name: "Checkbox",
    title: "Checkbox",
    kind: Component,
    description: "A control that toggles between checked, unchecked and indeterminate.",
    parts: ["Root", "Indicator"],
    demo: <CheckboxDemo />,
    notes: `The checked state is \`Radix.Shared.checkedState\`: \`Bool(true)\`, \`Bool(false)\` or \`Indeterminate\`. Radix's \`unstable_\` sub-parts are not bound.`,
  },
  {
    name: "Collapsible",
    title: "Collapsible",
    kind: Component,
    description: "An interactive component which expands and collapses a panel.",
    parts: ["Root", "Trigger", "Content"],
    demo: <CollapsibleDemo />,
  },
  {
    name: "ContextMenu",
    title: "Context Menu",
    kind: Component,
    description: "A menu opened at the pointer by right-click or long-press.",
    parts: menuParts,
    demo: <ContextMenuDemo />,
    notes: `\`CheckboxItem.checked\` is a \`Radix.Shared.checkedState\`, so a checkbox item can be indeterminate. ${dismissNote}`,
  },
  {
    name: "Dialog",
    title: "Dialog",
    kind: Component,
    description: "A window overlaid on the primary window, rendering the content underneath inert.",
    parts: ["Root", "Trigger", "Portal", "Overlay", "Content", "Title", "Description", "Close"],
    demo: <DialogDemo />,
    notes: dismissNote,
  },
  {
    name: "DropdownMenu",
    title: "Dropdown Menu",
    kind: Component,
    description: "A menu of actions or options, opened by a button.",
    parts: menuParts,
    demo: <DropdownMenuDemo />,
    notes: dismissNote,
  },
  {
    name: "Form",
    title: "Form",
    kind: Component,
    description: "Collects input from the user, with built-in validation messages.",
    parts: ["Root", "Field", "Label", "Control", "Message", "Submit"],
    demo: <FormDemo />,
    notes: `\`Message.match\` is a \`Radix.Form.matcher\`: \`Validity("valueMissing")\` for a built-in constraint, or \`Custom((value, formData) => bool)\` for your own check. \`Form.ValidityState\` (a render-prop API) and async matchers are not bound.`,
  },
  {
    name: "HoverCard",
    title: "Hover Card",
    kind: Component,
    description: "For sighted users to preview content available behind a link.",
    parts: ["Root", "Trigger", "Portal", "Content", "Arrow"],
    demo: <HoverCardDemo />,
  },
  {
    name: "Label",
    title: "Label",
    kind: Component,
    description: "Renders an accessible label associated with controls.",
    parts: ["Root"],
    demo: <LabelDemo />,
  },
  {
    name: "Menubar",
    title: "Menubar",
    kind: Component,
    description: "A visually persistent menu, as in desktop applications.",
    parts: ["Root", "Menu", "Trigger", ...menuParts->Array.filter(part => part != "Root" && part != "Trigger")],
    demo: <MenubarDemo />,
  },
  {
    name: "NavigationMenu",
    title: "Navigation Menu",
    kind: Component,
    description: "A collection of links for navigating websites.",
    parts: ["Root", "Sub", "List", "Item", "Trigger", "Content", "Link", "Indicator", "Viewport"],
    demo: <NavigationMenuDemo />,
  },
  {
    name: "OneTimePasswordField",
    title: "One-Time Password Field",
    kind: Component,
    description: "A group of single-character inputs for entering one-time codes.",
    parts: ["Root", "Input", "HiddenInput"],
    demo: <OneTimePasswordFieldDemo />,
    notes: "Binds Radix's `unstable_OneTimePasswordField` export, which may change in Radix minor releases.",
  },
  {
    name: "PasswordToggleField",
    title: "Password Toggle Field",
    kind: Component,
    description: "A password input with a button that shows or hides its value.",
    parts: ["Root", "Input", "Toggle", "Slot", "Icon"],
    demo: <PasswordToggleFieldDemo />,
    notes: "Binds Radix's `unstable_PasswordToggleField` export, which may change in Radix minor releases.",
  },
  {
    name: "Popover",
    title: "Popover",
    kind: Component,
    description: "Displays rich content in a portal, triggered by a button.",
    parts: ["Root", "Trigger", "Anchor", "Portal", "Content", "Arrow", "Close"],
    demo: <PopoverDemo />,
    notes: dismissNote,
  },
  {
    name: "Progress",
    title: "Progress",
    kind: Component,
    description: "Displays an indicator showing the completion progress of a task.",
    parts: ["Root", "Indicator"],
    demo: <ProgressDemo />,
    notes: "`value` is a `Nullable.t<float>`. Pass `Nullable.null` for an indeterminate state.",
  },
  {
    name: "RadioGroup",
    title: "Radio Group",
    kind: Component,
    description: "A set of checkable buttons, of which no more than one can be checked at a time.",
    parts: ["Root", "Item", "Indicator"],
    demo: <RadioGroupDemo />,
  },
  {
    name: "ScrollArea",
    title: "Scroll Area",
    kind: Component,
    description: "Augments native scroll functionality for custom, cross-browser styling.",
    parts: ["Root", "Viewport", "Scrollbar", "Thumb", "Corner"],
    demo: <ScrollAreaDemo />,
  },
  {
    name: "Select",
    title: "Select",
    kind: Component,
    description: "Displays a list of options for the user to pick from, triggered by a button.",
    parts: [
      "Root", "Trigger", "Value", "Icon", "Portal", "Content", "Viewport", "Group", "Label", "Item",
      "ItemText", "ItemIndicator", "ScrollUpButton", "ScrollDownButton", "Separator", "Arrow",
    ],
    demo: <SelectDemo />,
    notes: "`Value.placeholder` is a `React.element`, so it can hold more than text.",
  },
  {
    name: "Separator",
    title: "Separator",
    kind: Component,
    description: "Visually or semantically separates content.",
    parts: ["Root"],
    demo: <SeparatorDemo />,
  },
  {
    name: "Slider",
    title: "Slider",
    kind: Component,
    description: "An input where the user selects a value from within a given range.",
    parts: ["Root", "Track", "Range", "Thumb"],
    demo: <SliderDemo />,
    notes: "Values are `array<float>`, one per thumb. Radix's `unstable_` sub-parts are not bound.",
  },
  {
    name: "Switch",
    title: "Switch",
    kind: Component,
    description: "A control that allows the user to toggle between checked and not checked.",
    parts: ["Root", "Thumb"],
    demo: <SwitchDemo />,
  },
  {
    name: "Tabs",
    title: "Tabs",
    kind: Component,
    description: "Layered sections of content, known as tab panels, displayed one at a time.",
    parts: ["Root", "List", "Trigger", "Content"],
    demo: <TabsDemo />,
  },
  {
    name: "Toast",
    title: "Toast",
    kind: Component,
    description: "A succinct message that is displayed temporarily.",
    parts: ["Provider", "Viewport", "Root", "Title", "Description", "Action", "Close"],
    demo: <ToastDemo />,
    notes: "Toasts render into a `Viewport` inside a `Provider`. Wrap your app in one `Provider` and place the `Viewport` once.",
  },
  {
    name: "Toggle",
    title: "Toggle",
    kind: Component,
    description: "A two-state button that can be either on or off.",
    parts: ["Root"],
    demo: <ToggleDemo />,
  },
  {
    name: "ToggleGroup",
    title: "Toggle Group",
    kind: Component,
    description: "A set of two-state buttons that can be toggled on or off.",
    parts: ["Single", "Multiple", "Item"],
    demo: <ToggleGroupDemo />,
    notes: "Like Accordion, the root is split into `ToggleGroup.Single` (a `string` value) and `ToggleGroup.Multiple` (an `array<string>` value).",
  },
  {
    name: "Toolbar",
    title: "Toolbar",
    kind: Component,
    description: "A container for grouping a set of controls, such as buttons, toggle groups or menus.",
    parts: ["Root", "Button", "Link", "Separator", "ToggleGroupSingle", "ToggleGroupMultiple", "ToggleItem"],
    demo: <ToolbarDemo />,
    notes: "Radix's `Toolbar.ToggleGroup` is split into `ToggleGroupSingle` and `ToggleGroupMultiple`.",
  },
  {
    name: "Tooltip",
    title: "Tooltip",
    kind: Component,
    description: "A popup that displays information related to an element on hover or focus.",
    parts: ["Provider", "Root", "Trigger", "Portal", "Content", "Arrow"],
    demo: <TooltipDemo />,
    notes: "Tooltips need a `Provider` above them. One at the root of your app is enough.",
  },
  {
    name: "AccessibleIcon",
    title: "Accessible Icon",
    kind: Utility,
    description: "Makes icons accessible by adding a label.",
    parts: ["Root"],
    notes: `
\`\`\`rescript
<Radix.AccessibleIcon.Root label="Close">
  <CloseIcon />
</Radix.AccessibleIcon.Root>
\`\`\``,
  },
  {
    name: "Direction",
    title: "Direction",
    kind: Utility,
    description: "Sets the reading direction for every primitive beneath it.",
    parts: ["Provider", "useDirection"],
    notes: `
\`\`\`rescript
<Radix.Direction.Provider dir=#rtl>
  <App />
</Radix.Direction.Provider>
\`\`\``,
  },
  {
    name: "Portal",
    title: "Portal",
    kind: Utility,
    description: "Renders a React subtree in a different part of the DOM.",
    parts: ["Root"],
    notes: `Renders into \`document.body\` unless you pass a \`container\`.

\`\`\`rescript
<Radix.Portal.Root> {React.string("Rendered at the end of body")} </Radix.Portal.Root>
\`\`\``,
  },
  {
    name: "Slot",
    title: "Slot",
    kind: Utility,
    description: "Merges its props onto its immediate child.",
    parts: ["Root", "Slottable"],
    notes: `This is what powers \`asChild\`. See the [composition guide](/guides/composition).`,
  },
  {
    name: "VisuallyHidden",
    title: "Visually Hidden",
    kind: Utility,
    description: "Hides content from the screen in an accessible way.",
    parts: ["Root"],
    notes: `
\`\`\`rescript
<button>
  <GearIcon />
  <Radix.VisuallyHidden.Root> {React.string("Settings")} </Radix.VisuallyHidden.Root>
</button>
\`\`\``,
  },
]

let components = all->Array.filter(entry => entry.kind == Component)
let utilities = all->Array.filter(entry => entry.kind == Utility)

let find = slugToFind => all->Array.find(entry => slug(entry) == slugToFind)
