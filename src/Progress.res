/** https://www.radix-ui.com/primitives/docs/components/progress */

module Root = {
  @module("radix-ui") @scope("Progress") @react.component
  external make: (
    ~value: Nullable.t<float>=?,
    ~max: float=?,
    ~getValueLabel: (float, float) => string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Indicator = {
  @module("radix-ui") @scope("Progress") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Indicator"
}
