/** https://www.radix-ui.com/primitives/docs/components/navigation-menu */

module Root = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~dir: Shared.direction=?,
    ~orientation: Shared.orientation=?,
    ~delayDuration: int=?,
    ~skipDelayDuration: int=?,
    ~activationMode: [#automatic | #manual]=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Sub = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~orientation: Shared.orientation=?,
    ~activationMode: [#automatic | #manual]=?,
    ~disableToggle: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Sub"
}

module List = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "List"
}

module Item = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~value: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}

module Trigger = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
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
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~onPointerDownOutside: Shared.dismissEvent => unit=?,
    ~onFocusOutside: Shared.dismissEvent => unit=?,
    ~onInteractOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Link = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~href: string=?,
    ~active: bool=?,
    ~onSelect: Dom.event => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Link"
}

module Indicator = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Indicator"
}

module Viewport = {
  @module("radix-ui") @scope("NavigationMenu") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Viewport"
}
