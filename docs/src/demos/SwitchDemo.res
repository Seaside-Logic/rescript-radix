@react.component
let make = () =>
  <div className="row">
    <label className="label" htmlFor="airplane-mode"> {React.string("Airplane mode")} </label>
    <Radix.Switch.Root className="switch" id="airplane-mode">
      <Radix.Switch.Thumb className="switch-thumb" />
    </Radix.Switch.Root>
  </div>
