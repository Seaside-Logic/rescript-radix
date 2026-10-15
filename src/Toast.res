/** https://www.radix-ui.com/primitives/docs/components/toast */

/** Swipe gesture event; `delta` is the pointer travel in px. */
type swipeEvent = {delta: {"x": float, "y": float}}

module Provider = {
  @module("radix-ui") @scope("Toast") @react.component
  external make: (
    ~label: string=?,
    ~duration: int=?,
    ~swipeDirection: Shared.side=?,
    ~swipeThreshold: int=?,
    ~children: React.element=?,
  ) => React.element = "Provider"
}

module Viewport = {
  @module("radix-ui") @scope("Toast") @react.component
  external make: (
    ~hotkey: array<string>=?,
    ~label: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Viewport"
}

module Root = {
  @module("radix-ui") @scope("Toast") @react.component
  external make: (
    @as("type") ~type_: [#foreground | #background]=?,
    ~duration: int=?,
    @as("open") ~open_: bool=?,
    ~defaultOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~forceMount: bool=?,
    ~onEscapeKeyDown: Dom.keyboardEvent => unit=?,
    ~onPause: unit => unit=?,
    ~onResume: unit => unit=?,
    ~onSwipeStart: swipeEvent => unit=?,
    ~onSwipeMove: swipeEvent => unit=?,
    ~onSwipeCancel: swipeEvent => unit=?,
    ~onSwipeEnd: swipeEvent => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Title = {
  @module("radix-ui") @scope("Toast") @react.component
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
  @module("radix-ui") @scope("Toast") @react.component
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
  @module("radix-ui") @scope("Toast") @react.component
  external make: (
    ~altText: string,
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

module Close = {
  @module("radix-ui") @scope("Toast") @react.component
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
