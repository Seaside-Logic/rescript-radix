@react.component
let make = () =>
  <Radix.ToggleGroup.Multiple
    type_=#multiple className="toggle-group" defaultValue=["bold"] ariaLabel="Text formatting">
    <Radix.ToggleGroup.Item className="toggle" value="bold">
      <Icon.Bold />
    </Radix.ToggleGroup.Item>
    <Radix.ToggleGroup.Item className="toggle" value="italic">
      <Icon.Italic />
    </Radix.ToggleGroup.Item>
    <Radix.ToggleGroup.Item className="toggle" value="underline">
      <Icon.Underline />
    </Radix.ToggleGroup.Item>
  </Radix.ToggleGroup.Multiple>
