/** https://www.radix-ui.com/primitives/docs/components/scroll-area */

module Root = {
  @module("radix-ui") @scope("ScrollArea") @react.component
  external make: (
    @as("type") ~type_: [#auto | #always | #scroll | #hover]=?,
    ~scrollHideDelay: int=?,
    ~dir: Shared.direction=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Viewport = {
  @module("radix-ui") @scope("ScrollArea") @react.component
  external make: (
    ~nonce: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Viewport"
}

module Scrollbar = {
  @module("radix-ui") @scope("ScrollArea") @react.component
  external make: (
    ~orientation: Shared.orientation=?,
    ~forceMount: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Scrollbar"
}

module Thumb = {
  @module("radix-ui") @scope("ScrollArea") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Thumb"
}

module Corner = {
  @module("radix-ui") @scope("ScrollArea") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Corner"
}
