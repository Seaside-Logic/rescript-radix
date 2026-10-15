/** https://www.radix-ui.com/primitives/docs/components/form */

type formData

type validityMatcher = [
  | #badInput
  | #patternMismatch
  | #rangeOverflow
  | #rangeUnderflow
  | #stepMismatch
  | #tooLong
  | #tooShort
  | #typeMismatch
  | #valid
  | #valueMissing
]

/** `Message.match`: a built-in constraint name (`Validity("valueMissing")`, see `validityMatcher`), or a custom sync predicate over the field value and form data. */
@unboxed
type matcher =
  | Validity(string)
  | Custom((string, formData) => bool)

module Root = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    ~onSubmit: ReactEvent.Form.t => unit=?,
    ~onClearServerErrors: unit => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Field = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    ~name: string,
    ~serverInvalid: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Field"
}

module Label = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Label"
}

module Control = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    @as("type") ~type_: string=?,
    ~value: string=?,
    ~defaultValue: string=?,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~placeholder: string=?,
    ~required: bool=?,
    ~disabled: bool=?,
    ~pattern: string=?,
    ~min: string=?,
    ~max: string=?,
    ~minLength: int=?,
    ~maxLength: int=?,
    ~autoComplete: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Control"
}

module Message = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    ~match: matcher=?,
    ~forceMatch: bool=?,
    ~name: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Message"
}

module Submit = {
  @module("radix-ui") @scope("Form") @react.component
  external make: (
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Submit"
}
