@react.component
let make = () =>
  <Radix.Toolbar.Root className="toolbar" ariaLabel="Formatting options">
    <Radix.Toolbar.ToggleGroupMultiple type_=#multiple className="toggle-group">
      <Radix.Toolbar.ToggleItem className="toggle" value="bold">
        <Icon.Bold />
      </Radix.Toolbar.ToggleItem>
      <Radix.Toolbar.ToggleItem className="toggle" value="italic">
        <Icon.Italic />
      </Radix.Toolbar.ToggleItem>
    </Radix.Toolbar.ToggleGroupMultiple>
    <Radix.Toolbar.Separator className="separator" />
    <Radix.Toolbar.ToggleGroupSingle type_=#single className="toggle-group" defaultValue="left">
      <Radix.Toolbar.ToggleItem className="toggle" value="left">
        <Icon.AlignLeft />
      </Radix.Toolbar.ToggleItem>
      <Radix.Toolbar.ToggleItem className="toggle" value="center">
        <Icon.AlignCenter />
      </Radix.Toolbar.ToggleItem>
      <Radix.Toolbar.ToggleItem className="toggle" value="right">
        <Icon.AlignRight />
      </Radix.Toolbar.ToggleItem>
    </Radix.Toolbar.ToggleGroupSingle>
    <Radix.Toolbar.Separator className="separator" />
    <Radix.Toolbar.Link className="toolbar-link" href="#"> {React.string("Edited 2h ago")} </Radix.Toolbar.Link>
    <Radix.Toolbar.Button className="button primary small"> {React.string("Share")} </Radix.Toolbar.Button>
  </Radix.Toolbar.Root>
