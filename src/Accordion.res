/** https://www.radix-ui.com/primitives/docs/components/accordion

Radix's `Root` takes `type="single"` with a `string` value or `type="multiple"` with a `string[]` value.
Those are bound as `Single` and `Multiple`; pass `type_=#single` / `type_=#multiple` respectively. */

module Single = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    @as("type") ~type_: [#single],
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~collapsible: bool=?,
    ~disabled: bool=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Multiple = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    @as("type") ~type_: [#multiple],
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~value: array<string>=?,
    ~defaultValue: array<string>=?,
    ~onValueChange: array<string> => unit=?,
    ~disabled: bool=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Item = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    ~value: string,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}

module Header = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Header"
}

module Trigger = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Trigger"
}

module Content = {
  @module("radix-ui") @scope("Accordion") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}
