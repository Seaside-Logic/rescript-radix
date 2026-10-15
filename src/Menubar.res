/** https://www.radix-ui.com/primitives/docs/components/menubar */

module Root = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~value: string=?,
    ~defaultValue: string=?,
    ~onValueChange: string => unit=?,
    ~loop: bool=?,
    ~dir: Shared.direction=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Menu = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (~value: string=?, ~children: React.element=?) => React.element = "Menu"
}

module Trigger = {
  @module("radix-ui") @scope("Menubar") @react.component
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
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~container: Dom.element=?,
    ~forceMount: bool=?,
    ~children: React.element=?,
  ) => React.element = "Portal"
}

module Content = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~loop: bool=?,
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
    ~onFocusOutside: Shared.dismissEvent => unit=?,
    ~onInteractOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Arrow = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~width: int=?,
    ~height: int=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Arrow"
}

module Group = {
  @module("radix-ui") @scope("Menubar") @react.component
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
  @module("radix-ui") @scope("Menubar") @react.component
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
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~textValue: string=?,
    ~onSelect: Dom.event => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Item"
}

module CheckboxItem = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~checked: Shared.checkedState=?,
    ~onCheckedChange: bool => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~textValue: string=?,
    ~onSelect: Dom.event => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "CheckboxItem"
}

module RadioGroup = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~value: string=?,
    ~onValueChange: string => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "RadioGroup"
}

module RadioItem = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~value: string,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~textValue: string=?,
    ~onSelect: Dom.event => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "RadioItem"
}

module ItemIndicator = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "ItemIndicator"
}

module Separator = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Separator"
}

module Sub = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~children: React.element=?,
  ) => React.element = "Sub"
}

module SubTrigger = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~textValue: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "SubTrigger"
}

module SubContent = {
  @module("radix-ui") @scope("Menubar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~loop: bool=?,
    ~sideOffset: int=?,
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
  ) => React.element = "SubContent"
}
