/** https://www.radix-ui.com/primitives/docs/utilities/slot

`Root` merges its props onto its single child; `Slottable` marks which child receives them when `Root` wraps several. */

module Root = {
  @module("radix-ui") @scope("Slot") @react.component
  external make: (
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Slottable = {
  @module("radix-ui") @scope("Slot") @react.component
  external make: (~children: React.element) => React.element = "Slottable"
}
