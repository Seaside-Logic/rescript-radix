/** https://www.radix-ui.com/primitives/docs/components/select */

module Root = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~dir: Shared.direction=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~disabled: bool=?,
    ~required: bool=?,
    ~form: string=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Trigger = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Trigger"
}

module Value = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~placeholder: React.element=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Value"
}

module Icon = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Icon"
}

module Portal = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (~container: Dom.element=?, ~children: React.element=?) => React.element = "Portal"
}

module Content = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~position: [#"item-aligned" | #popper]=?,
    ~side: Shared.side=?,
    ~sideOffset: int=?,
    ~align: Shared.align=?,
    ~alignOffset: int=?,
    ~arrowPadding: int=?,
    ~avoidCollisions: bool=?,
    ~collisionPadding: int=?,
    ~sticky: Shared.sticky=?,
    ~hideWhenDetached: bool=?,
    ~onCloseAutoFocus: Dom.event => unit=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~onPointerDownOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Viewport = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~nonce: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Viewport"
}

module Group = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Group"
}

module Label = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Label"
}

module Item = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~value: string,
    ~disabled: bool=?,
    ~textValue: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}

module ItemText = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ItemText"
}

module ItemIndicator = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ItemIndicator"
}

module ScrollUpButton = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ScrollUpButton"
}

module ScrollDownButton = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ScrollDownButton"
}

module Separator = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Separator"
}

module Arrow = {
  @module("radix-ui") @scope("Select") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~width: int=?,
    ~height: int=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Arrow"
}
