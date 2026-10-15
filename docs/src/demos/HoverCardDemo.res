@react.component
let make = () =>
  <Radix.HoverCard.Root>
    <Radix.HoverCard.Trigger className="link" href="https://rescript-lang.org">
      {React.string("@rescript-lang")}
    </Radix.HoverCard.Trigger>
    <Radix.HoverCard.Portal>
      <Radix.HoverCard.Content className="popover hover-card" sideOffset=5>
        <div className="hover-card-mark"> {React.string("R")} </div>
        <div>
          <div className="hover-card-name"> {React.string("ReScript")} </div>
          <div className="muted"> {React.string("@rescript-lang")} </div>
        </div>
        <p> {React.string("Fast, simple, fully typed JavaScript from the future.")} </p>
        <Radix.HoverCard.Arrow className="popover-arrow" />
      </Radix.HoverCard.Content>
    </Radix.HoverCard.Portal>
  </Radix.HoverCard.Root>
