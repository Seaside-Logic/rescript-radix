/** Inline icons, 15×15 on a 15-unit grid (the Radix Icons convention), drawn with `currentColor`. */

module Svg = {
  @react.component
  let make = (~children, ~size=15) => {
    let size = Int.toString(size)
    <svg
      width=size
      height=size
      viewBox="0 0 15 15"
      fill="none"
      stroke="currentColor"
      strokeWidth="1.3"
      strokeLinecap="round"
      strokeLinejoin="round"
      ariaHidden=true>
      children
    </svg>
  }
}

module Check = {
  @react.component
  let make = () => <Svg> <path d="M3 7.8 6 10.5 12 4.5" /> </Svg>
}

module ChevronDown = {
  @react.component
  let make = () => <Svg> <path d="M4 6l3.5 3.5L11 6" /> </Svg>
}

module ChevronRight = {
  @react.component
  let make = () => <Svg> <path d="M6 4l3.5 3.5L6 11" /> </Svg>
}

module ArrowRight = {
  @react.component
  let make = () => <Svg> <path d="M2.5 7.5h10M8.5 3.5l4 4-4 4" /> </Svg>
}

module External = {
  @react.component
  let make = () => <Svg> <path d="M5.5 3.5h-2v8h8v-2M8 2.5h4.5V7M12.5 2.5 6.5 8.5" /> </Svg>
}

module Close = {
  @react.component
  let make = () => <Svg> <path d="M3.5 3.5l8 8M11.5 3.5l-8 8" /> </Svg>
}

module Menu = {
  @react.component
  let make = () => <Svg size=18> <path d="M2 4h11M2 7.5h11M2 11h11" /> </Svg>
}

module Sun = {
  @react.component
  let make = () =>
    <Svg size=17>
      <circle cx="7.5" cy="7.5" r="2.5" />
      <path
        d="M7.5 1v1.5M7.5 12.5V14M1 7.5h1.5M12.5 7.5H14M2.9 2.9 4 4M11 11l1.1 1.1M2.9 12.1 4 11M11 4l1.1-1.1"
      />
    </Svg>
}

module Moon = {
  @react.component
  let make = () => <Svg size=17> <path d="M12.5 9A5.5 5.5 0 0 1 6 2.5a5.5 5.5 0 1 0 6.5 6.5z" /> </Svg>
}

module Copy = {
  @react.component
  let make = () =>
    <Svg>
      <rect x="5" y="5" width="8" height="8" rx="1.5" />
      <path d="M10 5V3.5A1.5 1.5 0 0 0 8.5 2h-5A1.5 1.5 0 0 0 2 3.5v5A1.5 1.5 0 0 0 3.5 10H5" />
    </Svg>
}

module Bold = {
  @react.component
  let make = () => <Svg> <path d="M4.5 2.5h4a2.5 2.5 0 0 1 0 5h-4zM4.5 7.5h5a2.5 2.5 0 0 1 0 5h-5z" /> </Svg>
}

module Italic = {
  @react.component
  let make = () => <Svg> <path d="M6 2.5h5M4 12.5h5M9 2.5l-3 10" /> </Svg>
}

module Underline = {
  @react.component
  let make = () => <Svg> <path d="M4 2v5a3.5 3.5 0 0 0 7 0V2M3 13h9" /> </Svg>
}

module Minus = {
  @react.component
  let make = () => <Svg> <path d="M3.5 7.5h8" /> </Svg>
}

module Plus = {
  @react.component
  let make = () => <Svg> <path d="M7.5 3v9M3 7.5h9" /> </Svg>
}

module Dot = {
  @react.component
  let make = () => <Svg> <circle cx="7.5" cy="7.5" r="2" fill="currentColor" /> </Svg>
}

module EyeOpen = {
  @react.component
  let make = () =>
    <Svg>
      <path d="M1 7.5S3.5 3 7.5 3 14 7.5 14 7.5 11.5 12 7.5 12 1 7.5 1 7.5z" />
      <circle cx="7.5" cy="7.5" r="2" />
    </Svg>
}

module EyeClosed = {
  @react.component
  let make = () =>
    <Svg>
      <path d="M1 6c1.5 2 3.7 3.5 6.5 3.5S12.5 8 14 6M3.5 8.5 2.5 10M7.5 9.5V11M11.5 8.5l1 1.5" />
    </Svg>
}

module AlignLeft = {
  @react.component
  let make = () => <Svg> <path d="M2 3.5h11M2 7.5h7M2 11.5h9" /> </Svg>
}

module AlignCenter = {
  @react.component
  let make = () => <Svg> <path d="M2 3.5h11M4 7.5h7M3 11.5h9" /> </Svg>
}

module AlignRight = {
  @react.component
  let make = () => <Svg> <path d="M2 3.5h11M6 7.5h7M4 11.5h9" /> </Svg>
}

module GitHub = {
  @react.component
  let make = () =>
    <svg width="17" height="17" viewBox="0 0 16 16" fill="currentColor" ariaHidden=true>
      <path
        d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"
      />
    </svg>
}

module Logo = {
  @react.component
  let make = () =>
    <svg width="22" height="22" viewBox="0 0 22 22" ariaHidden=true>
      <rect width="22" height="22" rx="6" fill="var(--accent)" />
      <path d="M7 6v10M7 6h4.5a3 3 0 0 1 0 6H7M11 12l4 4" stroke="white" strokeWidth="2" fill="none" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
}
