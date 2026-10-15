let options = [("default", "Default"), ("comfortable", "Comfortable"), ("compact", "Compact")]

@react.component
let make = () =>
  <Radix.RadioGroup.Root className="radio-group" defaultValue="default" ariaLabel="View density">
    {options
    ->Array.map(((value, label)) =>
      <div key=value className="row">
        <Radix.RadioGroup.Item className="radio" value id={`density-${value}`}>
          <Radix.RadioGroup.Indicator className="radio-indicator" />
        </Radix.RadioGroup.Item>
        <label className="label" htmlFor={`density-${value}`}> {React.string(label)} </label>
      </div>
    )
    ->React.array}
  </Radix.RadioGroup.Root>
