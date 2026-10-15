/** https://www.radix-ui.com/primitives/docs/utilities/accessible-icon */

module Root = {
  @module("radix-ui") @scope("AccessibleIcon") @react.component
  external make: (~label: string, ~children: React.element=?) => React.element = "Root"
}
