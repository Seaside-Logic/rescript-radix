@react.component
let make = () =>
  <Radix.Tooltip.Provider>
    <Radix.Tooltip.Root>
      <Radix.Tooltip.Trigger asChild=true>
        <button className="icon-button" ariaLabel="Add to library"> <Icon.Plus /> </button>
      </Radix.Tooltip.Trigger>
      <Radix.Tooltip.Portal>
        <Radix.Tooltip.Content className="tooltip" sideOffset=5>
          {React.string("Add to library")}
          <Radix.Tooltip.Arrow className="tooltip-arrow" />
        </Radix.Tooltip.Content>
      </Radix.Tooltip.Portal>
    </Radix.Tooltip.Root>
  </Radix.Tooltip.Provider>
