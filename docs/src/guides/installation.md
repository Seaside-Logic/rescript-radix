Install the bindings alongside Radix:

```sh
npm install rescript-radix radix-ui
```

Then add the package to the `dependencies` in your `rescript.json`:

```json
{
  "dependencies": ["@rescript/react", "rescript-radix"]
}
```

The package ships ReScript source, which your project compiles. Every primitive is available under the `Radix` namespace:

```rescript
<Radix.Switch.Root defaultChecked=true>
  <Radix.Switch.Thumb />
</Radix.Switch.Root>
```

## Compatibility

The bindings are tested against:

| Package | Version |
| --- | --- |
| rescript | 12.3 |
| @rescript/react | 0.15 |
| react | 19.2 |
| radix-ui | 1.8 |

Bindings import from the unified `radix-ui` package. The per-primitive `@radix-ui/react-*` packages are not used.

## What the package contains

Every part is an `external`. The package contains no runtime code of its own, so the JavaScript your project ships is exactly what `radix-ui` ships.
