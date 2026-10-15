/** https://www.radix-ui.com/primitives/docs/components/alert-dialog */

module Root = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Trigger = {
  @module("radix-ui") @scope("AlertDialog") @react.component
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
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~container: Dom.element=?,
    ~forceMount: bool=?,
    ~children: React.element=?,
  ) => React.element = "Portal"
}

module Overlay = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Overlay"
}

module Content = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~onOpenAutoFocus: Dom.event => unit=?,
    ~onCloseAutoFocus: Dom.event => unit=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

module Title = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Title"
}

module Description = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Description"
}

module Action = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Action"
}

module Cancel = {
  @module("radix-ui") @scope("AlertDialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Cancel"
}
