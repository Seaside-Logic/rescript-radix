/** https://www.radix-ui.com/primitives/docs/components/radio-group */

module Root = {
  @module("radix-ui") @scope("RadioGroup") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~disabled: bool=?,
    ~required: bool=?,
    ~name: string=?,
    ~form: string=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~loop: bool=?,
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
  @module("radix-ui") @scope("RadioGroup") @react.component
  external make: (
    ~value: string,
    ~disabled: bool=?,
    ~required: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}

module Indicator = {
  @module("radix-ui") @scope("RadioGroup") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Indicator"
}
