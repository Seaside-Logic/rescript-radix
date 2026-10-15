/** https://www.radix-ui.com/primitives/docs/components/collapsible */

module Root = {
  @module("radix-ui") @scope("Collapsible") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~disabled: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Trigger = {
  @module("radix-ui") @scope("Collapsible") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Trigger"
}

module Content = {
  @module("radix-ui") @scope("Collapsible") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}
