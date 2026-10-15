Radix Primitives are unstyled, and so are these bindings. Use plain CSS, CSS modules, utility classes or anything else your app already uses.

Every part takes `className` and `style`:

```rescript
<Radix.Switch.Root className="switch" style={{width: "42px"}}>
  <Radix.Switch.Thumb className="switch-thumb" />
</Radix.Switch.Root>
```

## State attributes

Radix describes each part's state with `data-*` attributes, so you can style states without tracking them yourself:

```css
.switch[data-state="checked"] {
  background: seagreen;
}

.switch-thumb {
  transition: transform 100ms;
}

.switch-thumb[data-state="checked"] {
  transform: translateX(19px);
}
```

Common attributes are `data-state` (`open`/`closed`, `checked`/`unchecked`, `active`/`inactive`), `data-disabled`, `data-highlighted` for menu items, `data-orientation` and `data-side` for positioned content. Each Radix component page lists the attributes its parts set.

## Animation

Parts that mount and unmount, such as dialog and popover content, keep their `data-state="closed"` attribute until a CSS animation finishes. A keyframe animation on that state is enough to animate both directions:

```css
.dialog[data-state="open"] {
  animation: fade-in 150ms ease-out;
}

.dialog[data-state="closed"] {
  animation: fade-out 100ms ease-in;
}
```

Use `forceMount` when you want to control mounting yourself, for example with an animation library.

## Positioned content

Popovers, tooltips, menus and hover cards expose CSS variables for their size and transform origin, such as `--radix-popover-content-transform-origin` and `--radix-tooltip-content-available-height`. The docs for each component list them.

Every demo on this site is styled with plain CSS in `docs/src/styles.css`, which makes a good starting point.
