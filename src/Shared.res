/** Types shared across primitives. Consumers see this module as `Radix.Shared`. */

/** CustomEvent fired by dismissable parts (`onPointerDownOutside`, `onFocusOutside`, `onInteractOutside`). */
type dismissEvent

/** Calls `preventDefault` on any Radix callback event to cancel the default behavior (e.g. keep a layer open). */
@send external preventDefault: 'event => unit = "preventDefault"

type side = [#top | #right | #bottom | #left]
type align = [#start | #center | #end]
type orientation = [#horizontal | #vertical]
type direction = [#ltr | #rtl]
type sticky = [#partial | #always]

/** Checkbox-style tri-state: `Bool(true)`, `Bool(false)` or `Indeterminate` (serialized as `"indeterminate"`). */
@unboxed
type checkedState = Bool(bool) | @as("indeterminate") Indeterminate
