/** https://www.radix-ui.com/primitives/docs/components/tooltip */

module Provider = {
  @module("radix-ui") @scope("Tooltip") @react.component
  external make: (
    ~delayDuration: int=?,
    ~skipDelayDuration: int=?,
    ~disableHoverableContent: bool=?,
    ~children: React.element,
  ) => React.element = "Provider"
}

module Root = {
  @module("radix-ui") @scope("Tooltip") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~delayDuration: int=?,
    ~disableHoverableContent: bool=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Trigger = {
  @module("radix-ui") @scope("Tooltip") @react.component
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

module Portal = {
  @module("radix-ui") @scope("Tooltip") @react.component
  external make: (
    ~container: Dom.element=?,
    ~forceMount: bool=?,
    ~children: React.element=?,
  ) => React.element = "Portal"
}

module Content = {
  @module("radix-ui") @scope("Tooltip") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~side: Shared.side=?,
    ~sideOffset: int=?,
    ~align: Shared.align=?,
    ~alignOffset: int=?,
    ~arrowPadding: int=?,
    ~avoidCollisions: bool=?,
    ~collisionPadding: int=?,
    ~sticky: Shared.sticky=?,
    ~hideWhenDetached: bool=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~onPointerDownOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Arrow = {
  @module("radix-ui") @scope("Tooltip") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~width: int=?,
    ~height: int=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Arrow"
}
