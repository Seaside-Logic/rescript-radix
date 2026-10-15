/** https://www.radix-ui.com/primitives/docs/utilities/direction-provider */

module Provider = {
  @module("radix-ui") @scope("Direction") @react.component
  external make: (~dir: Shared.direction, ~children: React.element=?) => React.element = "Provider"
}

/** Reads the direction from the nearest `Provider`, falling back to the optional local override. */
@module("radix-ui") @scope("Direction")
external useDirection: (~localDir: Shared.direction=?) => Shared.direction = "useDirection"
