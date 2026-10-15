/** https://www.radix-ui.com/primitives/docs/components/hover-card */

module Root = {
  @module("radix-ui") @scope("HoverCard") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~openDelay: int=?,
    ~closeDelay: int=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Trigger = {
  @module("radix-ui") @scope("HoverCard") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~href: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Trigger"
}

module Portal = {
  @module("radix-ui") @scope("HoverCard") @react.component
  external make: (
    ~container: Dom.element=?,
    ~forceMount: bool=?,
    ~children: React.element=?,
  ) => React.element = "Portal"
}

module Content = {
  @module("radix-ui") @scope("HoverCard") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
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
    ~onFocusOutside: Shared.dismissEvent => unit=?,
    ~onInteractOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Arrow = {
  @module("radix-ui") @scope("HoverCard") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~width: int=?,
    ~height: int=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Arrow"
}
