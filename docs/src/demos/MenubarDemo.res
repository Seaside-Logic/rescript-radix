module Item = {
  @react.component
  let make = (~label, ~shortcut=?, ~disabled=?) =>
    <Radix.Menubar.Item className="menu-item" ?disabled>
      {React.string(label)}
      {switch shortcut {
      | Some(keys) => <span className="menu-shortcut"> {React.string(keys)} </span>
      | None => React.null
      }}
    </Radix.Menubar.Item>
}

@react.component
let make = () => {
  let (wordWrap, setWordWrap) = React.useState(() => true)

  <Radix.Menubar.Root className="menubar">
    <Radix.Menubar.Menu>
      <Radix.Menubar.Trigger className="menubar-trigger"> {React.string("File")} </Radix.Menubar.Trigger>
      <Radix.Menubar.Portal>
        <Radix.Menubar.Content className="menu" align=#start sideOffset=5>
          <Item label="New file" shortcut="⌘N" />
          <Item label="Open…" shortcut="⌘O" />
          <Radix.Menubar.Separator className="menu-separator" />
          <Item label="Print…" shortcut="⌘P" />
        </Radix.Menubar.Content>
      </Radix.Menubar.Portal>
    </Radix.Menubar.Menu>
    <Radix.Menubar.Menu>
      <Radix.Menubar.Trigger className="menubar-trigger"> {React.string("Edit")} </Radix.Menubar.Trigger>
      <Radix.Menubar.Portal>
        <Radix.Menubar.Content className="menu" align=#start sideOffset=5>
          <Item label="Undo" shortcut="⌘Z" />
          <Item label="Redo" shortcut="⇧⌘Z" disabled=true />
          <Radix.Menubar.Separator className="menu-separator" />
          <Item label="Cut" />
          <Item label="Copy" />
          <Item label="Paste" />
        </Radix.Menubar.Content>
      </Radix.Menubar.Portal>
    </Radix.Menubar.Menu>
    <Radix.Menubar.Menu>
      <Radix.Menubar.Trigger className="menubar-trigger"> {React.string("View")} </Radix.Menubar.Trigger>
      <Radix.Menubar.Portal>
        <Radix.Menubar.Content className="menu" align=#start sideOffset=5>
          <Radix.Menubar.CheckboxItem
            className="menu-item"
            checked=Bool(wordWrap)
            onCheckedChange={value => setWordWrap(_ => value)}>
            <Radix.Menubar.ItemIndicator className="menu-indicator">
              <Icon.Check />
            </Radix.Menubar.ItemIndicator>
            {React.string("Word wrap")}
          </Radix.Menubar.CheckboxItem>
        </Radix.Menubar.Content>
      </Radix.Menubar.Portal>
    </Radix.Menubar.Menu>
  </Radix.Menubar.Root>
}
