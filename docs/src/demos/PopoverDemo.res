@react.component
let make = () =>
  <Radix.Popover.Root>
    <Radix.Popover.Trigger className="button"> {React.string("Dimensions")} </Radix.Popover.Trigger>
    <Radix.Popover.Portal>
      <Radix.Popover.Content className="popover" sideOffset=5>
        <div className="popover-title"> {React.string("Dimensions")} </div>
        <label className="field inline">
          <span className="label"> {React.string("Width")} </span>
          <input className="input" defaultValue="100%" />
        </label>
        <label className="field inline">
          <span className="label"> {React.string("Height")} </span>
          <input className="input" defaultValue="25px" />
        </label>
        <Radix.Popover.Close asChild=true>
          <button className="icon-button popover-close" ariaLabel="Close"> <Icon.Close /> </button>
        </Radix.Popover.Close>
        <Radix.Popover.Arrow className="popover-arrow" />
      </Radix.Popover.Content>
    </Radix.Popover.Portal>
  </Radix.Popover.Root>
