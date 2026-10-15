/** https://www.radix-ui.com/primitives/docs/utilities/visually-hidden */

module Root = {
  @module("radix-ui") @scope("VisuallyHidden") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}
