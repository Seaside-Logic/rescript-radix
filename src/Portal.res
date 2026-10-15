/** https://www.radix-ui.com/primitives/docs/utilities/portal */

module Root = {
  @module("radix-ui") @scope("Portal") @react.component
  external make: (
    ~container: Dom.element=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}
