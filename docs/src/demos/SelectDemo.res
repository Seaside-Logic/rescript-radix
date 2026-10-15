module Item = {
  @react.component
  let make = (~value, ~children, ~disabled=?) =>
    <Radix.Select.Item className="select-item" value ?disabled>
      <Radix.Select.ItemText> {React.string(children)} </Radix.Select.ItemText>
      <Radix.Select.ItemIndicator className="menu-indicator"> <Icon.Check /> </Radix.Select.ItemIndicator>
    </Radix.Select.Item>
}

@react.component
let make = () =>
  <Radix.Select.Root>
    <Radix.Select.Trigger className="button select-trigger" ariaLabel="Food">
      <Radix.Select.Value placeholder={React.string("Select a fruit…")} />
      <Radix.Select.Icon> <Icon.ChevronDown /> </Radix.Select.Icon>
    </Radix.Select.Trigger>
    <Radix.Select.Portal>
      <Radix.Select.Content className="menu select-content">
        <Radix.Select.Viewport>
          <Radix.Select.Group>
            <Radix.Select.Label className="menu-label"> {React.string("Fruits")} </Radix.Select.Label>
            <Item value="apple"> {"Apple"} </Item>
            <Item value="banana"> {"Banana"} </Item>
            <Item value="blueberry"> {"Blueberry"} </Item>
          </Radix.Select.Group>
          <Radix.Select.Separator className="menu-separator" />
          <Radix.Select.Group>
            <Radix.Select.Label className="menu-label"> {React.string("Vegetables")} </Radix.Select.Label>
            <Item value="carrot"> {"Carrot"} </Item>
            <Item value="leek" disabled=true> {"Leek"} </Item>
          </Radix.Select.Group>
        </Radix.Select.Viewport>
      </Radix.Select.Content>
    </Radix.Select.Portal>
  </Radix.Select.Root>
