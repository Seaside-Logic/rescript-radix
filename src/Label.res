/** https://www.radix-ui.com/primitives/docs/components/label */

module Root = {
  @module("radix-ui") @scope("Label") @react.component
  external make: (
    ~htmlFor: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}
