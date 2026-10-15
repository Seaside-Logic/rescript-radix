/** https://www.radix-ui.com/primitives/docs/components/dialog */

/** https://www.radix-ui.com/primitives/docs/components/dialog#root */
module Root = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~modal: bool=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

/** https://www.radix-ui.com/primitives/docs/components/dialog#trigger */
module Trigger = {
  @module("radix-ui") @scope("Dialog") @react.component
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

/** https://www.radix-ui.com/primitives/docs/components/dialog#portal */
module Portal = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    ~container: Dom.element=?,
    ~forceMount: bool=?,
    ~children: React.element=?,
  ) => React.element = "Portal"
}

/** https://www.radix-ui.com/primitives/docs/components/dialog#overlay */
module Overlay = {
  @module("radix-ui") @scope("Dialog") @react.component
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

/** https://www.radix-ui.com/primitives/docs/components/dialog#content */
module Content = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~forceMount: bool=?,
    ~onOpenAutoFocus: Dom.event => unit=?,
    ~onCloseAutoFocus: Dom.event => unit=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~onPointerDownOutside: Shared.dismissEvent => unit=?,
    ~onFocusOutside: Shared.dismissEvent => unit=?,
    ~onInteractOutside: Shared.dismissEvent => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Content"
}

/** https://www.radix-ui.com/primitives/docs/components/dialog#title */
module Title = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Title"
}

/** https://www.radix-ui.com/primitives/docs/components/dialog#description */
module Description = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Description"
}

/** https://www.radix-ui.com/primitives/docs/components/dialog#close */
module Close = {
  @module("radix-ui") @scope("Dialog") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~disabled: bool=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Close"
}
