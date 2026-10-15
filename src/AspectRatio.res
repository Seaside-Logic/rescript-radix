/** https://www.radix-ui.com/primitives/docs/components/aspect-ratio */

module Root = {
  @module("radix-ui") @scope("AspectRatio") @react.component
  external make: (
    ~ratio: float=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}
