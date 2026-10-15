/** https://www.radix-ui.com/primitives/docs/components/toggle-group

Bound as `Single` (string value) and `Multiple` (array value), like `Accordion`. */

module Single = {
  @module("radix-ui") @scope("ToggleGroup") @react.component
  external make: (
    @as("type") ~type_: [#single],
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~disabled: bool=?,
    ~rovingFocus: bool=?,
    ~loop: bool=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Multiple = {
  @module("radix-ui") @scope("ToggleGroup") @react.component
  external make: (
    @as("type") ~type_: [#multiple],
    ~value: array<string>=?,
    ~defaultValue: array<string>=?,
    ~onValueChange: array<string> => unit=?,
    ~disabled: bool=?,
    ~rovingFocus: bool=?,
    ~loop: bool=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Item = {
  @module("radix-ui") @scope("ToggleGroup") @react.component
  external make: (
    ~value: string,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}
