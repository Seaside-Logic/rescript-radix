/** https://www.radix-ui.com/primitives/docs/components/toolbar */

module Root = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    ~orientation: Shared.orientation=?,
    ~loop: bool=?,
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

module Button = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Button"
}

module Link = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    ~href: string=?,
    ~target: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Link"
}

module Separator = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Separator"
}

module ToggleGroupSingle = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    @as("type") ~type_: [#single],
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ToggleGroup"
}

module ToggleGroupMultiple = {
  @module("radix-ui") @scope("Toolbar") @react.component
  external make: (
    @as("type") ~type_: [#multiple],
    ~value: array<string>=?,
    ~defaultValue: array<string>=?,
    ~onValueChange: array<string> => unit=?,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ToggleGroup"
}

module ToggleItem = {
  @module("radix-ui") @scope("Toolbar") @react.component
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
  ) => React.element = "ToggleItem"
}
