/** https://www.radix-ui.com/primitives/docs/components/password-toggle-field

Radix ships this as `unstable_PasswordToggleField`; its API may change between minor versions. */

module Root = {
  @module("radix-ui") @scope("unstable_PasswordToggleField") @react.component
  external make: (
    ~id: string=?,
    ~visible: bool=?,
    ~defaultVisible: bool=?,
    ~onVisibilityChange: bool => unit=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Input = {
  @module("radix-ui") @scope("unstable_PasswordToggleField") @react.component
  external make: (
    ~autoComplete: [#"current-password" | #"new-password"]=?,
    ~value: string=?,
    ~defaultValue: string=?,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~name: string=?,
    ~placeholder: string=?,
    ~required: bool=?,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Input"
}

module Toggle = {
  @module("radix-ui") @scope("unstable_PasswordToggleField") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Toggle"
}

/** Renders `visible` when the password is shown and `hidden` otherwise. */
module Slot = {
  @module("radix-ui") @scope("unstable_PasswordToggleField") @react.component
  external make: (~visible: React.element, ~hidden: React.element) => React.element = "Slot"
}

module Icon = {
  @module("radix-ui") @scope("unstable_PasswordToggleField") @react.component
  external make: (
    ~visible: React.element,
    ~hidden: React.element,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Icon"
}
