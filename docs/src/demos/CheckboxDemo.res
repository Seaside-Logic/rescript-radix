@react.component
let make = () => {
  let (checked, setChecked) = React.useState(() => Radix.Shared.Indeterminate)

  <div className="row">
    <Radix.Checkbox.Root
      className="checkbox" id="updates" checked onCheckedChange={value => setChecked(_ => value)}>
      <Radix.Checkbox.Indicator className="checkbox-indicator">
        {switch checked {
        | Indeterminate => <Icon.Minus />
        | Bool(_) => <Icon.Check />
        }}
      </Radix.Checkbox.Indicator>
    </Radix.Checkbox.Root>
    <label className="label" htmlFor="updates"> {React.string("Email me product updates")} </label>
  </div>
}
