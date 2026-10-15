/** https://www.radix-ui.com/primitives/docs/components/one-time-password-field

Radix ships this as `unstable_OneTimePasswordField`; its API may change between minor versions. */

module Root = {
  @module("radix-ui") @scope("unstable_OneTimePasswordField") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~autoSubmit: bool=?,
    ~onAutoSubmit: string => unit=?,
    ~autoComplete: [#off | #"one-time-code"]=?,
    ~autoFocus: bool=?,
    ~disabled: bool=?,
    ~readOnly: bool=?,
    ~form: string=?,
    ~name: string=?,
    ~placeholder: string=?,
    @as("type") ~type_: [#password | #text]=?,
    ~validationType: [#alpha | #numeric | #alphanumeric | #none]=?,
    ~sanitizeValue: string => string=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Input = {
  @module("radix-ui") @scope("unstable_OneTimePasswordField") @react.component
  external make: (
    ~index: int=?,
    ~onInvalidChange: string => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Input"
}

module HiddenInput = {
  @module("radix-ui") @scope("unstable_OneTimePasswordField") @react.component
  external make: (~name: string=?, ~ref: ReactDOM.Ref.t=?) => React.element = "HiddenInput"
}
