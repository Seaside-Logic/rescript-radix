Each part renders a sensible default element: a `Trigger` renders a `<button>`, a `Content` renders a `<div>`. Pass `asChild=true` to render your own element instead. Radix merges its props, event handlers and ref onto the single child.

```rescript
<Radix.Tooltip.Trigger asChild=true>
  <a href="/settings"> {React.string("Settings")} </a>
</Radix.Tooltip.Trigger>
```

## When to use it

- **A different element.** Render a link instead of a button, or a `<li>` instead of a `<div>`.
- **Your own component.** Use your app's `Button` as a dialog trigger.
- **Combined behavior.** Nest triggers so one element opens a tooltip and a dialog:

```rescript
<Radix.Dialog.Root>
  <Radix.Tooltip.Root>
    <Radix.Tooltip.Trigger asChild=true>
      <Radix.Dialog.Trigger className="icon-button"> {React.string("Edit")} </Radix.Dialog.Trigger>
    </Radix.Tooltip.Trigger>
    <Radix.Tooltip.Content> {React.string("Edit profile")} </Radix.Tooltip.Content>
  </Radix.Tooltip.Root>
  <Radix.Dialog.Content> ... </Radix.Dialog.Content>
</Radix.Dialog.Root>
```

## Custom components

A custom child must accept the props Radix injects and pass them, along with the ref, to a DOM element. In ReScript that usually means binding the component with the props you need and forwarding `ref`:

```rescript
module Button = {
  @react.component
  let make = (~ref=?, ~onClick=?, ~children) =>
    <button ?ref ?onClick className="button"> children </button>
}
```

The bindings can't make an arbitrary component compatible automatically. See the [Radix composition guide](https://www.radix-ui.com/primitives/docs/guides/composition) for the full requirements.

## Passing other attributes

`asChild` is also the way to set HTML attributes the bindings don't cover, such as `title`:

```rescript
<Radix.Popover.Trigger asChild=true>
  <button title="More options"> {React.string("…")} </button>
</Radix.Popover.Trigger>
```
