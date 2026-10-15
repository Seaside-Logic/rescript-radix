/** https://www.radix-ui.com/primitives/docs/components/switch */

module Root = {
  @module("radix-ui") @scope("Switch") @react.component
  external make: (
    ~checked: bool=?,
    ~defaultChecked: bool=?,
    ~onCheckedChange: bool => unit=?,
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

module Thumb = {
  @module("radix-ui") @scope("Switch") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Thumb"
}
