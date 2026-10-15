let tags = Array.fromInitializer(~length=50, i => `v1.2.0-beta.${Int.toString(50 - i)}`)

@react.component
let make = () =>
  <Radix.ScrollArea.Root className="scroll-area">
    <Radix.ScrollArea.Viewport className="scroll-area-viewport">
      <div className="scroll-area-title"> {React.string("Tags")} </div>
      {tags->Array.map(tag => <div key=tag className="scroll-area-tag"> {React.string(tag)} </div>)->React.array}
    </Radix.ScrollArea.Viewport>
    <Radix.ScrollArea.Scrollbar className="scrollbar" orientation=#vertical>
      <Radix.ScrollArea.Thumb className="scrollbar-thumb" />
    </Radix.ScrollArea.Scrollbar>
  </Radix.ScrollArea.Root>
