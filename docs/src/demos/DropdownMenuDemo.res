@react.component
let make = () => {
  let (showBookmarks, setShowBookmarks) = React.useState(() => true)
  let (person, setPerson) = React.useState(() => "pedro")

  <Radix.DropdownMenu.Root>
    <Radix.DropdownMenu.Trigger className="button">
      {React.string("Options")}
      <Icon.ChevronDown />
    </Radix.DropdownMenu.Trigger>
    <Radix.DropdownMenu.Portal>
      <Radix.DropdownMenu.Content className="menu" sideOffset=5 align=#start>
        <Radix.DropdownMenu.Item className="menu-item">
          {React.string("New tab")}
          <span className="menu-shortcut"> {React.string("⌘T")} </span>
        </Radix.DropdownMenu.Item>
        <Radix.DropdownMenu.Item className="menu-item">
          {React.string("New window")}
          <span className="menu-shortcut"> {React.string("⌘N")} </span>
        </Radix.DropdownMenu.Item>
        <Radix.DropdownMenu.Separator className="menu-separator" />
        <Radix.DropdownMenu.CheckboxItem
          className="menu-item"
          checked=Bool(showBookmarks)
          onCheckedChange={value => setShowBookmarks(_ => value)}>
          <Radix.DropdownMenu.ItemIndicator className="menu-indicator">
            <Icon.Check />
          </Radix.DropdownMenu.ItemIndicator>
          {React.string("Show bookmarks")}
        </Radix.DropdownMenu.CheckboxItem>
        <Radix.DropdownMenu.Separator className="menu-separator" />
        <Radix.DropdownMenu.Label className="menu-label"> {React.string("People")} </Radix.DropdownMenu.Label>
        <Radix.DropdownMenu.RadioGroup value=person onValueChange={value => setPerson(_ => value)}>
          <Radix.DropdownMenu.RadioItem className="menu-item" value="pedro">
            <Radix.DropdownMenu.ItemIndicator className="menu-indicator">
              <Icon.Dot />
            </Radix.DropdownMenu.ItemIndicator>
            {React.string("Pedro Duarte")}
          </Radix.DropdownMenu.RadioItem>
          <Radix.DropdownMenu.RadioItem className="menu-item" value="colm">
            <Radix.DropdownMenu.ItemIndicator className="menu-indicator">
              <Icon.Dot />
            </Radix.DropdownMenu.ItemIndicator>
            {React.string("Colm Tuite")}
          </Radix.DropdownMenu.RadioItem>
        </Radix.DropdownMenu.RadioGroup>
      </Radix.DropdownMenu.Content>
    </Radix.DropdownMenu.Portal>
  </Radix.DropdownMenu.Root>
}
