/** https://www.radix-ui.com/primitives/docs/components/avatar */

type loadingStatus = [#idle | #loading | #loaded | #error]

module Root = {
  @module("radix-ui") @scope("Avatar") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Image = {
  @module("radix-ui") @scope("Avatar") @react.component
  external make: (
    ~src: string=?,
    ~alt: string=?,
    ~onLoadingStatusChange: loadingStatus => unit=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Image"
}

module Fallback = {
  @module("radix-ui") @scope("Avatar") @react.component
  external make: (
    ~delayMs: int=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Fallback"
}
