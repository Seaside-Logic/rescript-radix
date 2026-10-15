# Changelog

## 0.1.0 (2026-10-15)

First release.

- Bindings for every Radix Primitives component and utility, imported from the unified `radix-ui` package. See [Component coverage](README.md#component-coverage).
- Parts whose `type` prop changes the value shape are split: `Accordion.Single` / `Multiple`, `ToggleGroup.Single` / `Multiple`, `Toolbar.ToggleGroupSingle` / `ToggleGroupMultiple`.
- Typed callback values: `Radix.Shared.checkedState` for checkboxes, `Radix.Shared.dismissEvent` for dismissal callbacks, `Radix.Form.matcher` for form messages.
- `OneTimePasswordField` and `PasswordToggleField` bind Radix's `unstable_` exports.
- Not bound: `Form.ValidityState`, async `Form.Message` matchers, and the `unstable_` sub-parts of Slider and Checkbox.
- Documentation at [rescript-radix.dev](https://rescript-radix.dev), with [llms.txt](https://rescript-radix.dev/llms.txt) for AI coding agents.

Tested with rescript 12.3, @rescript/react 0.15, react 19.2 and radix-ui 1.8.
