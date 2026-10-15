/** https://www.radix-ui.com/primitives/docs/components/slider */

module Root = {
  @module("radix-ui") @scope("Slider") @react.component
  external make: (
    ~value: array<float>=?,
    ~defaultValue: array<float>=?,
    ~onValueChange: array<float> => unit=?,
    ~onValueCommit: array<float> => unit=?,
    ~min: float=?,
    ~max: float=?,
    ~step: float=?,
    ~minStepsBetweenThumbs: int=?,
    ~preserveThumbOrder: bool=?,
    ~orientation: Shared.orientation=?,
    ~dir: Shared.direction=?,
    ~inverted: bool=?,
    ~disabled: bool=?,
    ~name: string=?,
    ~form: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~id: string=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Root"
}

module Track = {
  @module("radix-ui") @scope("Slider") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
    ~children: React.element=?,
  ) => React.element = "Track"
}

module Range = {
  @module("radix-ui") @scope("Slider") @react.component
  external make: (
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Range"
}

module Thumb = {
  @module("radix-ui") @scope("Slider") @react.component
  external make: (
    ~name: string=?,
    @as("aria-label") ~ariaLabel: string=?,
    ~asChild: bool=?,
    ~className: string=?,
    ~style: ReactDOM.Style.t=?,
    ~ref: ReactDOM.Ref.t=?,
  ) => React.element = "Thumb"
}
