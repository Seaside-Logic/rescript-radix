Each Radix primitive is a ReScript module whose parts are submodules. Compose them the same way you would in JavaScript:

```rescript
@react.component
let make = () =>
  <Radix.Dialog.Root>
    <Radix.Dialog.Trigger className="button"> {React.string("Edit profile")} </Radix.Dialog.Trigger>
    <Radix.Dialog.Portal>
      <Radix.Dialog.Overlay className="overlay" />
      <Radix.Dialog.Content className="dialog">
        <Radix.Dialog.Title> {React.string("Edit profile")} </Radix.Dialog.Title>
        <Radix.Dialog.Close className="button"> {React.string("Close")} </Radix.Dialog.Close>
      </Radix.Dialog.Content>
    </Radix.Dialog.Portal>
  </Radix.Dialog.Root>
```

## Controlled and uncontrolled state

Like Radix, every stateful part works either way. Pass `defaultValue`, `defaultOpen` or `defaultChecked` and let Radix own the state, or pass the value together with its change handler and own it yourself:

```rescript
@react.component
let make = () => {
  let (tab, setTab) = React.useState(() => "account")

  <Radix.Tabs.Root value=tab onValueChange={value => setTab(_ => value)}>
    <Radix.Tabs.List ariaLabel="Settings">
      <Radix.Tabs.Trigger value="account"> {React.string("Account")} </Radix.Tabs.Trigger>
      <Radix.Tabs.Trigger value="password"> {React.string("Password")} </Radix.Tabs.Trigger>
    </Radix.Tabs.List>
  </Radix.Tabs.Root>
}
```

## Naming

- `open` and `type` are ReScript keywords, so those props are `open_` and `type_`. They are passed to Radix as `open` and `type`.
- `aria-label` is bound as `ariaLabel` where Radix documents it.
- Finite string props are polymorphic variants: `side=#bottom`, `orientation=#vertical`, `dir=#rtl`.

## Single and multiple selection

Parts whose Radix `type` prop changes the shape of the value are split in two:

| Radix | ReScript | Value |
| --- | --- | --- |
| `Accordion.Root type="single"` | `Accordion.Single type_=#single` | `string` |
| `Accordion.Root type="multiple"` | `Accordion.Multiple type_=#multiple` | `array<string>` |
| `ToggleGroup.Root` | `ToggleGroup.Single` / `ToggleGroup.Multiple` | as above |
| `Toolbar.ToggleGroup` | `Toolbar.ToggleGroupSingle` / `Toolbar.ToggleGroupMultiple` | as above |

`type_` is still passed so the JSX reads like Radix's, and the type checker rejects a mismatch.

## Checked state

Checkboxes can be indeterminate, so their state is `Radix.Shared.checkedState`: `Bool(true)`, `Bool(false)` or `Indeterminate`.

```rescript
<Radix.Checkbox.Root defaultChecked=Radix.Shared.Indeterminate />
```

## Preventing default behavior

Dismissal callbacks (`onPointerDownOutside`, `onFocusOutside`, `onInteractOutside`) receive a `Radix.Shared.dismissEvent`. Call `Radix.Shared.preventDefault` on it, or on any other Radix callback event, to cancel the default behavior:

```rescript
<Radix.Dialog.Content onInteractOutside={Radix.Shared.preventDefault}>
  ...
</Radix.Dialog.Content>
```

## Prop coverage

Each part binds the props Radix documents for it, plus `asChild`, `className`, `style`, `id`, `ref` and `children`. Button-like parts also take `disabled` and `onClick`. The full HTML attribute surface is not bound. When you need another attribute, use [`asChild`](/guides/composition) and render your own element.
