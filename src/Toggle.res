/** https://www.radix-ui.com/primitives/docs/components/toggle */

module Root = {
  @module("radix-ui") @scope("Toggle") @react.component
  external make: (
    ~pressed: bool=?,
    ~defaultPressed: bool=?,
    ~onPressedChange: bool => unit=?,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}
