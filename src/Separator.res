/** https://www.radix-ui.com/primitives/docs/components/separator */

module Root = {
  @module("radix-ui") @scope("Separator") @react.component
  external make: (
    ~orientation: Shared.orientation=?,
    ~decorative: bool=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Root"
}
