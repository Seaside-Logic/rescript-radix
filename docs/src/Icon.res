/** Icons from Lucide (https://lucide.dev), drawn with `currentColor`; GitHub and Logo are hand-drawn
    since Lucide has no brand icons. Icons that carry meaning on their own announce a fixed label via
    AccessibleIcon; the rest are decorative. */

module Labeled = {
  @react.component
  let make = (~children, ~label=?) =>
    switch label {
    | Some(label) => <Radix.AccessibleIcon.Root label> children </Radix.AccessibleIcon.Root>
    | None => children
    }
}

type lucideProps = {size?: int, fill?: string}
type lucide = React.component<lucideProps>

@module("lucide-react") external check: lucide = "Check"
@module("lucide-react") external chevronDown: lucide = "ChevronDown"
@module("lucide-react") external chevronRight: lucide = "ChevronRight"
@module("lucide-react") external arrowRight: lucide = "ArrowRight"
@module("lucide-react") external externalLink: lucide = "ExternalLink"
@module("lucide-react") external x: lucide = "X"
@module("lucide-react") external menu: lucide = "Menu"
@module("lucide-react") external sun: lucide = "Sun"
@module("lucide-react") external moon: lucide = "Moon"
@module("lucide-react") external copy: lucide = "Copy"
@module("lucide-react") external bold: lucide = "Bold"
@module("lucide-react") external italic: lucide = "Italic"
@module("lucide-react") external underline: lucide = "Underline"
@module("lucide-react") external minus: lucide = "Minus"
@module("lucide-react") external plus: lucide = "Plus"
@module("lucide-react") external circle: lucide = "Circle"
@module("lucide-react") external eye: lucide = "Eye"
@module("lucide-react") external eyeClosed: lucide = "EyeClosed"
@module("lucide-react") external textAlignStart: lucide = "TextAlignStart"
@module("lucide-react") external textAlignCenter: lucide = "TextAlignCenter"
@module("lucide-react") external textAlignEnd: lucide = "TextAlignEnd"

module Lucide = {
  @react.component
  let make = (~icon: lucide, ~size=15, ~fill="none", ~label=?) =>
    <Labeled ?label> {React.createElement(icon, ({size, fill}: lucideProps))} </Labeled>
}

module Check = {
  @react.component
  let make = () => <Lucide icon=check />
}

module ChevronDown = {
  @react.component
  let make = () => <Lucide icon=chevronDown />
}

module ChevronRight = {
  @react.component
  let make = () => <Lucide icon=chevronRight />
}

module ArrowRight = {
  @react.component
  let make = () => <Lucide icon=arrowRight />
}

module External = {
  @react.component
  let make = () => <Lucide icon=externalLink label="(opens in a new tab)" />
}

module Close = {
  @react.component
  let make = () => <Lucide icon=x label="Close" />
}

module Menu = {
  @react.component
  let make = () => <Lucide icon=menu label="Menu" size=18 />
}

module Sun = {
  @react.component
  let make = () => <Lucide icon=sun label="Light theme" size=17 />
}

module Moon = {
  @react.component
  let make = () => <Lucide icon=moon label="Dark theme" size=17 />
}

module Copy = {
  @react.component
  let make = () => <Lucide icon=copy label="Copy" />
}

module Bold = {
  @react.component
  let make = () => <Lucide icon=bold label="Bold" />
}

module Italic = {
  @react.component
  let make = () => <Lucide icon=italic label="Italic" />
}

module Underline = {
  @react.component
  let make = () => <Lucide icon=underline label="Underline" />
}

module Minus = {
  @react.component
  let make = () => <Lucide icon=minus />
}

module Plus = {
  @react.component
  let make = () => <Lucide icon=plus label="Add" />
}

module Dot = {
  @react.component
  let make = () => <Lucide icon=circle size=6 fill="currentColor" />
}

module EyeOpen = {
  @react.component
  let make = () => <Lucide icon=eye />
}

module EyeClosed = {
  @react.component
  let make = () => <Lucide icon=eyeClosed />
}

module AlignLeft = {
  @react.component
  let make = () => <Lucide icon=textAlignStart label="Left aligned" />
}

module AlignCenter = {
  @react.component
  let make = () => <Lucide icon=textAlignCenter label="Center aligned" />
}

module AlignRight = {
  @react.component
  let make = () => <Lucide icon=textAlignEnd label="Right aligned" />
}

module GitHub = {
  @react.component
  let make = () =>
    <Labeled label="GitHub repository">
      <svg width="17" height="17" viewBox="0 0 16 16" fill="currentColor" ariaHidden=true>
        <path
          d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"
        />
      </svg>
    </Labeled>
}

module Logo = {
  @react.component
  let make = () =>
    <svg width="22" height="22" viewBox="0 0 22 22" ariaHidden=true>
      <rect width="22" height="22" rx="6" fill="var(--accent)" />
      <path d="M7 6v10M7 6h4.5a3 3 0 0 1 0 6H7M11 12l4 4" stroke="white" strokeWidth="2" fill="none" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
}
