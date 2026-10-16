CSS modules scope class names to the file that defines them, so styles for one component can't leak into another. Vite supports them with no configuration: any file ending in `.module.css` is a CSS module. This guide covers importing one into ReScript and the patterns specific to Radix.

## Importing a module

A CSS module's default export is an object mapping each class name to its generated, scoped name. Bind it as a record with one field per class:

```css
/* Switch.module.css */
.root {
  width: 42px;
  height: 25px;
  border-radius: 9999px;
  background: #d4d4d8;
}

.thumb {
  display: block;
  width: 21px;
  height: 21px;
  border-radius: 9999px;
  background: white;
}
```

```rescript
// Switch.res
type styles = {root: string, thumb: string}
@module("./Switch.module.css") external styles: styles = "default"

@react.component
let make = () =>
  <Radix.Switch.Root className={styles.root}>
    <Radix.Switch.Thumb className={styles.thumb} />
  </Radix.Switch.Root>
```

The record is a promise you make to the compiler, not something it checks. If a field has no matching class in the CSS file, it is `undefined` at runtime and the part renders unstyled. Keep the record next to the import and update both together.

## Import paths

The `@module` path is resolved from the compiled JavaScript file, not the `.res` file. With `"in-source": true` in `rescript.json`, the compiled `Switch.res.mjs` sits next to `Switch.res`, so `./Switch.module.css` resolves. If your project compiles into `lib/`, either switch to in-source output or write paths relative to the output directory.

## Class names with dashes

Record fields can't contain dashes. Map a dashed class to a field with `@as`:

```rescript
type styles = {
  root: string,
  @as("switch-thumb") switchThumb: string,
}
```

Or have Vite convert class names to camelCase for every module:

```js
// vite.config.js
export default defineConfig({
  css: {
    modules: { localsConvention: "camelCaseOnly" },
  },
});
```

## State attributes

Radix describes state with `data-*` attributes. CSS modules only rename classes, so attribute selectors work unchanged:

```css
.root[data-state="checked"] {
  background: seagreen;
}

.thumb {
  transition: transform 100ms;
  transform: translateX(2px);
}

.thumb[data-state="checked"] {
  transform: translateX(19px);
}

.item[data-highlighted] {
  background: #f4f4f5;
}

.item[data-disabled] {
  opacity: 0.5;
  pointer-events: none;
}
```

To style a child from a parent's state, combine the two classes from the same module:

```css
.trigger[data-state="open"] .chevron {
  transform: rotate(180deg);
}
```

## Portals

Dialogs, popovers, menus and tooltips render their content in a portal at the end of `<body>`. A class on the content still applies, but a descendant selector that starts outside the portal does not:

```css
/* Matches nothing: .page is not an ancestor of the portalled content */
.page .menu {
  min-width: 220px;
}

/* Style the content directly */
.menu {
  min-width: 220px;
}
```

## Animation

CSS modules scope keyframe names too, so a module can use short names like `fade-in` without colliding with other files. Reference them from the same module:

```css
@keyframes fade-in {
  from { opacity: 0; }
}

@keyframes fade-out {
  to { opacity: 0; }
}

.content[data-state="open"] {
  animation: fade-in 150ms ease-out;
}

.content[data-state="closed"] {
  animation: fade-out 100ms ease-in;
}
```

Radix keeps a closing part mounted until its animation finishes, so this animates both directions.

## CSS variables

Custom properties are not scoped, so the variables Radix sets on positioned and collapsible parts work as written:

```css
.popover {
  transform-origin: var(--radix-popover-content-transform-origin);
}

.select-content {
  max-height: var(--radix-select-content-available-height);
}

@keyframes accordion-down {
  from { height: 0; }
  to { height: var(--radix-accordion-content-height); }
}
```

Each Radix component page lists the variables its parts set.

## Combining classes

Join classes with a template string:

```rescript
<Radix.Toggle.Root className={`${styles.button} ${styles.primary}`}>
  {React.string("Bold")}
</Radix.Toggle.Root>
```

Prefer a state attribute over a conditional class when Radix already sets one. `.root[data-state="on"]` stays correct for controlled and uncontrolled parts, while a conditional class needs you to track the state yourself.

## Shared tokens

Keep colors, spacing and radii in a global stylesheet as custom properties, and reference them from each module:

```css
/* styles.css, imported once at your app's entry */
:root {
  --accent: #10b981;
  --radius: 0.5rem;
}
```

```css
/* Switch.module.css */
.root[data-state="checked"] {
  background: var(--accent);
}
```
