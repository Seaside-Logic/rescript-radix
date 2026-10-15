/** https://www.radix-ui.com/primitives/docs/components/checkbox */

module Root = {
  @module("radix-ui") @scope("Checkbox") @react.component
  external make: (
    ~checked: Shared.checkedState=?,
    ~defaultChecked: Shared.checkedState=?,
    ~onCheckedChange: Shared.checkedState => unit=?,
    ~disabled: bool=?,
    ~required: bool=?,
    ~name: string=?,
    ~value: string=?,
    ~form: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Indicator = {
  @module("radix-ui") @scope("Checkbox") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Indicator"
}
