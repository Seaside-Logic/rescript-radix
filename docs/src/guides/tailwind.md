Radix parts take a `className`, so Tailwind utilities work the same way they do in a TypeScript project. This guide covers the setup and the patterns specific to Radix: state variants, animations and CSS variables. It assumes Tailwind CSS v4 and Vite.

## Setup

Install Tailwind and its Vite plugin:

```sh
npm install tailwindcss @tailwindcss/vite
```

Add the plugin to `vite.config.js`:

```js
import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [tailwindcss()],
});
```

Import Tailwind from your stylesheet:

```css
@import "tailwindcss";
```

## How Tailwind finds your classes

Tailwind scans your project's files for class names. It reads `.res` files like any other text file, so class strings in your ReScript source are picked up with no extra configuration.

Tailwind skips anything in `.gitignore`. Most ReScript projects ignore the compiled `*.res.mjs` output, which is fine: the same strings are in the `.res` source. If your sources live outside the project root, register them explicitly:

```css
@import "tailwindcss";
@source "../shared/src";
```

Tailwind only sees complete class names. Build strings from whole classes, never from fragments:

```rescript
// Tailwind can't see "bg-red-500" or "bg-green-500" here
let tone = `bg-${color}-500`

// Both classes appear in full, so both are generated
let tone = isError ? "bg-red-500" : "bg-green-500"
```

## Styling parts

Pass utilities through `className`:

```rescript
<Radix.Switch.Root
  className="relative h-6 w-11 rounded-full bg-zinc-300 outline-none focus-visible:ring-2 focus-visible:ring-emerald-500">
  <Radix.Switch.Thumb className="block size-5 translate-x-0.5 rounded-full bg-white shadow transition-transform" />
</Radix.Switch.Root>
```

## State variants

Radix describes state with `data-*` attributes. Tailwind's `data-*` variants target them directly, so you never need to track state yourself to style it.

Use the arbitrary form for attributes with values, such as `data-state`:

```rescript
<Radix.Switch.Root
  className="h-6 w-11 rounded-full bg-zinc-300 data-[state=checked]:bg-emerald-500">
  <Radix.Switch.Thumb
    className="block size-5 translate-x-0.5 rounded-full bg-white transition-transform data-[state=checked]:translate-x-[22px]"
  />
</Radix.Switch.Root>
```

Use the bare form for attributes Radix sets without a value, such as `data-disabled` and `data-highlighted`:

```rescript
<Radix.DropdownMenu.Item
  className="rounded px-2 py-1.5 outline-none data-highlighted:bg-zinc-100 data-disabled:pointer-events-none data-disabled:opacity-50">
  {React.string("Rename")}
</Radix.DropdownMenu.Item>
```

To style a child from a parent's state, mark the parent with `group` and use `group-data-*`. This rotates an accordion chevron when its item opens:

```rescript
<Radix.Accordion.Trigger className="group flex w-full items-center justify-between py-3">
  {React.string("Is it accessible?")}
  <ChevronDown className="transition-transform group-data-[state=open]:rotate-180" />
</Radix.Accordion.Trigger>
```

`data-side`, `data-align` and `data-orientation` work the same way, for example `data-[side=top]:mb-2` or `data-[orientation=vertical]:flex-col`.

## Animation

Parts that mount and unmount, such as dialog and popover content, keep `data-state="closed"` until their exit animation finishes. Define the keyframes once as theme animations:

```css
@import "tailwindcss";

@theme {
  --animate-fade-in: fade-in 150ms ease-out;
  --animate-fade-out: fade-out 100ms ease-in;
  --animate-scale-in: scale-in 150ms ease-out;
}

@keyframes fade-in {
  from { opacity: 0; }
}

@keyframes fade-out {
  to { opacity: 0; }
}

@keyframes scale-in {
  from { opacity: 0; transform: scale(0.96); }
}
```

Then apply them per state:

```rescript
<Radix.Dialog.Portal>
  <Radix.Dialog.Overlay
    className="fixed inset-0 bg-black/40 data-[state=open]:animate-fade-in data-[state=closed]:animate-fade-out"
  />
  <Radix.Dialog.Content
    className="fixed top-1/2 left-1/2 w-[90vw] max-w-md -translate-1/2 rounded-lg bg-white p-6 shadow-xl data-[state=open]:animate-scale-in data-[state=closed]:animate-fade-out">
    ...
  </Radix.Dialog.Content>
</Radix.Dialog.Portal>
```

## CSS variables

Positioned and collapsible parts expose CSS variables. Tailwind v4 reads a variable with the `(--name)` shorthand.

Grow a popover from its trigger and cap a select's height at the space available:

```rescript
<Radix.Popover.Content
  className="origin-(--radix-popover-content-transform-origin) data-[state=open]:animate-scale-in">
  ...
</Radix.Popover.Content>

<Radix.Select.Content
  position=#popper
  className="max-h-(--radix-select-content-available-height) w-(--radix-select-trigger-width)">
  ...
</Radix.Select.Content>
```

Animate accordion content to its measured height:

```css
@theme {
  --animate-accordion-down: accordion-down 200ms ease-out;
  --animate-accordion-up: accordion-up 200ms ease-out;
}

@keyframes accordion-down {
  from { height: 0; }
  to { height: var(--radix-accordion-content-height); }
}

@keyframes accordion-up {
  from { height: var(--radix-accordion-content-height); }
  to { height: 0; }
}
```

```rescript
<Radix.Accordion.Content
  className="overflow-hidden data-[state=open]:animate-accordion-down data-[state=closed]:animate-accordion-up">
  ...
</Radix.Accordion.Content>
```

Each Radix component page lists the variables its parts set.

## Reusing styles

Long class strings repeat quickly. Wrap the part in a component of your own and keep the classes in one place:

```rescript
module MenuItem = {
  @react.component
  let make = (~onSelect=?, ~children) =>
    <Radix.DropdownMenu.Item
      ?onSelect
      className="rounded px-2 py-1.5 outline-none data-highlighted:bg-zinc-100">
      children
    </Radix.DropdownMenu.Item>
}
```

To let callers add classes, accept a `className` and join it onto the defaults:

```rescript
let make = (~className="", ~children) =>
  <Radix.Popover.Content className={`rounded-md bg-white p-4 shadow-lg ${className}`}>
    children
  </Radix.Popover.Content>
```

Joining doesn't resolve conflicts: if a caller passes `p-2`, both `p-4` and `p-2` apply and the one later in Tailwind's stylesheet wins. If callers need to override defaults, run the result through [tailwind-merge](https://github.com/dcastil/tailwind-merge) with a one-line binding:

```rescript
@module("tailwind-merge") @variadic
external twMerge: array<string> => string = "twMerge"

let make = (~className="", ~children) =>
  <Radix.Popover.Content className={twMerge(["rounded-md bg-white p-4 shadow-lg", className])}>
    children
  </Radix.Popover.Content>
```
