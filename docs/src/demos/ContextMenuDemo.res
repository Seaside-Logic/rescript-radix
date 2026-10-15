@react.component
let make = () => {
  let (showGrid, setShowGrid) = React.useState(() => true)

  <Radix.ContextMenu.Root>
    <Radix.ContextMenu.Trigger className="context-area">
      {React.string("Right-click here")}
    </Radix.ContextMenu.Trigger>
    <Radix.ContextMenu.Portal>
      <Radix.ContextMenu.Content className="menu">
        <Radix.ContextMenu.Item className="menu-item">
          {React.string("Back")}
          <span className="menu-shortcut"> {React.string("⌘[")} </span>
        </Radix.ContextMenu.Item>
        <Radix.ContextMenu.Item className="menu-item" disabled=true>
          {React.string("Forward")}
          <span className="menu-shortcut"> {React.string("⌘]")} </span>
        </Radix.ContextMenu.Item>
        <Radix.ContextMenu.Item className="menu-item">
          {React.string("Reload")}
          <span className="menu-shortcut"> {React.string("⌘R")} </span>
        </Radix.ContextMenu.Item>
        <Radix.ContextMenu.Sub>
          <Radix.ContextMenu.SubTrigger className="menu-item">
            {React.string("More tools")}
            <span className="menu-shortcut"> <Icon.ChevronRight /> </span>
          </Radix.ContextMenu.SubTrigger>
          <Radix.ContextMenu.Portal>
            <Radix.ContextMenu.SubContent className="menu" sideOffset=2 alignOffset={-5}>
              <Radix.ContextMenu.Item className="menu-item"> {React.string("Save page as…")} </Radix.ContextMenu.Item>
              <Radix.ContextMenu.Item className="menu-item"> {React.string("Developer tools")} </Radix.ContextMenu.Item>
            </Radix.ContextMenu.SubContent>
          </Radix.ContextMenu.Portal>
        </Radix.ContextMenu.Sub>
        <Radix.ContextMenu.Separator className="menu-separator" />
        <Radix.ContextMenu.CheckboxItem
          className="menu-item"
          checked=Bool(showGrid)
          onCheckedChange={value => setShowGrid(_ => value)}>
          <Radix.ContextMenu.ItemIndicator className="menu-indicator">
            <Icon.Check />
          </Radix.ContextMenu.ItemIndicator>
          {React.string("Show grid")}
        </Radix.ContextMenu.CheckboxItem>
      </Radix.ContextMenu.Content>
    </Radix.ContextMenu.Portal>
  </Radix.ContextMenu.Root>
}
