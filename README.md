# rescript-radix

Unofficial ReScript React bindings for [Radix Primitives](https://www.radix-ui.com/primitives).

Use Radix's accessible, unstyled React components from ReScript.

> **Status: 0.1.0, published.** All Radix Primitives components and utilities are bound (see [Component coverage](#component-coverage)). Prop coverage per part is deliberately lean; see [Prop coverage](#prop-coverage).

## Why rescript-radix?

Radix provides interaction behavior, keyboard navigation, focus management, and accessibility foundations for common UI components. ReScript provides a typed way to compose them into your application.

This package aims to connect the two through a thin binding layer. Radix remains responsible for component behavior; your application controls styling, content, and composition. Accessible results still depend on following each primitive's usage requirements.

## Design goals

- **Stay close to Radix.** Preserve component names, compound component structure, and behavior wherever practical.
- **Use ReScript types.** Represent optional props, callbacks, and finite values with appropriate types.
- **Keep styling in your hands.** Support ordinary classes and styles without requiring a CSS framework or theme.
- **Support incremental adoption.** Use the primitives you need alongside existing React and ReScript components.
- **Keep abstractions optional.** Put higher-level composition helpers in a separate package rather than making them part of the core bindings.

## Usage

Each primitive's parts live under one module, namespaced as `Radix`:

```rescript
@react.component
let make = () => {
  <Radix.Dialog.Root>
    <Radix.Dialog.Trigger className="button">
      {React.string("Edit profile")}
    </Radix.Dialog.Trigger>
    <Radix.Dialog.Portal>
      <Radix.Dialog.Overlay className="dialog-overlay" />
      <Radix.Dialog.Content className="dialog-content">
        <Radix.Dialog.Title>
          {React.string("Edit profile")}
        </Radix.Dialog.Title>
        <Radix.Dialog.Description>
          {React.string("Update your profile information.")}
        </Radix.Dialog.Description>
        <ProfileForm />
        <Radix.Dialog.Close className="button">
          {React.string("Close")}
        </Radix.Dialog.Close>
      </Radix.Dialog.Content>
    </Radix.Dialog.Portal>
  </Radix.Dialog.Root>
}
```

> In the code above, `ProfileForm` represents an application component.

### Naming notes

- `open` and `type` are ReScript keywords, so those props are `open_` and `type_`. They serialize to the Radix names.
- `aria-label` is bound as `ariaLabel` where Radix documents it.
- Parts whose Radix `type` prop changes the value shape are split in two: `Accordion.Single` / `Accordion.Multiple`, `ToggleGroup.Single` / `ToggleGroup.Multiple`, `Toolbar.ToggleGroupSingle` / `Toolbar.ToggleGroupMultiple`. Pass `type_=#single` or `type_=#multiple`; the type checker rejects a mismatch.
- `Checkbox` tri-state uses `Radix.Shared.checkedState`: `Bool(true)`, `Bool(false)`, `Indeterminate`.
- Dismissal callbacks (`onPointerDownOutside`, `onFocusOutside`, `onInteractOutside`) receive `Radix.Shared.dismissEvent`; call `Radix.Shared.preventDefault(event)` to cancel.
- `OneTimePasswordField` and `PasswordToggleField` bind Radix's `unstable_` exports and may change with Radix minors.

### Prop coverage

Each part binds the props Radix documents for it, plus `asChild`, `className`, `style`, `id`, `ref` and `children`. Button-like parts also take `disabled` and `onClick`. The full HTML attribute surface is not bound. When you need another attribute, use `asChild` and supply your own element.

## Styling

Radix Primitives are unstyled. Apply your own CSS using the exposed DOM props and Radix's state attributes, such as `data-state` where supported.

The core package is intended to work with plain CSS, CSS modules, utility classes, or another styling approach supported by your application. It will not provide a theme or a set of finished visual components.

## Composition and `asChild`

The core bindings are intended to expose Radix's optional `asChild` prop. Ordinary usage can rely on each primitive's default DOM element and style it directly.

Use `asChild` when you need a different underlying element, an existing component, or multiple primitive behaviors on the same element. Radix handles the composition internally, but a custom child must pass the injected props and ref through to the appropriate DOM element. The bindings cannot automatically make an arbitrary component compatible.

See the [Radix composition guide](https://www.radix-ui.com/primitives/docs/guides/composition) for the underlying requirements.

A separate companion package, provisionally named **rescript-radix-compose**, is being considered for typed button/link adapters and an explicit attachment API for custom components. These helpers are exploratory and are not a prerequisite for using the core bindings.

## Installation and compatibility

```sh
npm install rescript-radix radix-ui
```

Add it to `rescript.json`:

```json
{ "dependencies": ["@rescript/react", "rescript-radix"] }
```

The package ships ReScript source and is compiled by your project. Tested against:

| Package         | Version |
| --------------- | ------- |
| rescript        | 12.3    |
| @rescript/react | 0.15    |
| react           | 19.2    |
| radix-ui        | 1.8     |

Bindings import from the unified `radix-ui` package (`import * as RadixUi from "radix-ui"; RadixUi.Dialog.Root`). The per-primitive `@radix-ui/react-*` packages are not referenced directly.

## Component coverage

One ReScript module per Radix primitive, each exposing Radix's parts as submodules.

| Module                                                  | Parts                                                                                                                                                  |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Accordion                                               | Single, Multiple, Item, Header, Trigger, Content                                                                                                       |
| AlertDialog                                             | Root, Trigger, Portal, Overlay, Content, Title, Description, Action, Cancel                                                                            |
| AspectRatio                                             | Root                                                                                                                                                   |
| Avatar                                                  | Root, Image, Fallback                                                                                                                                  |
| Checkbox                                                | Root, Indicator                                                                                                                                        |
| Collapsible                                             | Root, Trigger, Content                                                                                                                                 |
| ContextMenu                                             | Root, Trigger, Portal, Content, Arrow, Group, Label, Item, CheckboxItem, RadioGroup, RadioItem, ItemIndicator, Separator, Sub, SubTrigger, SubContent  |
| Dialog                                                  | Root, Trigger, Portal, Overlay, Content, Title, Description, Close                                                                                     |
| DropdownMenu                                            | same parts as ContextMenu                                                                                                                              |
| Form                                                    | Root, Field, Label, Control, Message, Submit                                                                                                           |
| HoverCard                                               | Root, Trigger, Portal, Content, Arrow                                                                                                                  |
| Label                                                   | Root                                                                                                                                                   |
| Menubar                                                 | Root, Menu, Trigger, plus the ContextMenu parts                                                                                                        |
| NavigationMenu                                          | Root, Sub, List, Item, Trigger, Content, Link, Indicator, Viewport                                                                                     |
| OneTimePasswordField                                    | Root, Input, HiddenInput                                                                                                                               |
| PasswordToggleField                                     | Root, Input, Toggle, Slot, Icon                                                                                                                        |
| Popover                                                 | Root, Trigger, Anchor, Portal, Content, Arrow, Close                                                                                                   |
| Progress                                                | Root, Indicator                                                                                                                                        |
| RadioGroup                                              | Root, Item, Indicator                                                                                                                                  |
| ScrollArea                                              | Root, Viewport, Scrollbar, Thumb, Corner                                                                                                               |
| Select                                                  | Root, Trigger, Value, Icon, Portal, Content, Viewport, Group, Label, Item, ItemText, ItemIndicator, ScrollUpButton, ScrollDownButton, Separator, Arrow |
| Separator                                               | Root                                                                                                                                                   |
| Slider                                                  | Root, Track, Range, Thumb                                                                                                                              |
| Switch                                                  | Root, Thumb                                                                                                                                            |
| Tabs                                                    | Root, List, Trigger, Content                                                                                                                           |
| Toast                                                   | Provider, Viewport, Root, Title, Description, Action, Close                                                                                            |
| Toggle                                                  | Root                                                                                                                                                   |
| ToggleGroup                                             | Single, Multiple, Item                                                                                                                                 |
| Toolbar                                                 | Root, Button, Link, Separator, ToggleGroupSingle, ToggleGroupMultiple, ToggleItem                                                                      |
| Tooltip                                                 | Provider, Root, Trigger, Portal, Content, Arrow                                                                                                        |
| AccessibleIcon, Direction, Portal, Slot, VisuallyHidden | utilities                                                                                                                                              |

Not bound: `Form.ValidityState` (render-prop API), async `Form.Message` matchers, and Radix's `unstable_` sub-parts of Slider and Checkbox.

## Contributing

Feedback on the proposed API is welcome, particularly around prop types, refs, and composition.

Contributions should preserve Radix behavior and keep the binding layer small: every part is an `external` and the package contains no runtime code of its own.

```sh
npm install
npm test        # rescript build (warnings are errors) + vitest under happy-dom
```

The tests check the bindings, not Radix's behavior:

- `test/Smoke_test.res` server-renders each primitive. It catches wrong module or export names and props that serialize incorrectly.
- `test/Callbacks_test.res` mounts primitives in happy-dom, fires DOM events through `test/Browser.res`, and asserts that each callback receives a correctly typed value (for example, `onCheckedChange` yields `Bool(true)` rather than a raw JS value).

To add or extend a part, read its props in `node_modules/@radix-ui/react-<name>/dist/index.d.mts`, bind them in `src/<Name>.res` following the pattern in `src/Dialog.res`, and add a case to `test/Smoke_test.res`. If a callback passes a value shape not yet covered in `test/Callbacks_test.res` (a new variant, record, or array type), add an interaction test there too.

### Documentation site

`docs/` is a separate Vite app that depends on this package via `file:..`, so its examples compile against the current bindings. It is not part of the published package.

```sh
cd docs && npm install
npm run res:watch   # in one terminal
npm run dev         # in another
```

Each component page renders `docs/src/demos/<Name>Demo.res` and shows that file's source. To document a new part, update the demo and the entry in `docs/src/Catalog.res`. The build also emits `/llms.txt`, `/llms-full.txt` and a `.md` copy of every page for AI agents ([llmstxt.org](https://llmstxt.org)), generated from the same data by `docs/src/LlmsTxt.res`. The site routes by path, so the host needs to serve `index.html` for unknown paths (Cloudflare Pages and Netlify do this by default).

## Project relationship

This is an independent community project. It is not affiliated with or endorsed by Radix or WorkOS.

Radix Primitives is maintained by WorkOS and distributed under the [MIT license](https://github.com/radix-ui/primitives/blob/main/LICENSE). This repository is distributed under the [MIT license](LICENSE).
