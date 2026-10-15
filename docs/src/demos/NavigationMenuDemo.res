module ListItem = {
  @react.component
  let make = (~title, ~href, ~children) =>
    <li>
      <Radix.NavigationMenu.Link className="nav-card" href>
        <div className="nav-card-title"> {React.string(title)} </div>
        <p className="nav-card-text"> {React.string(children)} </p>
      </Radix.NavigationMenu.Link>
    </li>
}

@react.component
let make = () =>
  <Radix.NavigationMenu.Root className="nav">
    <Radix.NavigationMenu.List className="nav-list">
      <Radix.NavigationMenu.Item>
        <Radix.NavigationMenu.Trigger className="nav-trigger">
          {React.string("Guides")}
          <Icon.ChevronDown />
        </Radix.NavigationMenu.Trigger>
        <Radix.NavigationMenu.Content className="nav-content">
          <ul className="nav-grid">
            <ListItem title="Installation" href="/guides/installation">
              {"Add the package and configure your project."}
            </ListItem>
            <ListItem title="Usage" href="/guides/usage"> {"Compound parts and controlled state."} </ListItem>
            <ListItem title="Styling" href="/guides/styling"> {"Classes and Radix state attributes."} </ListItem>
            <ListItem title="Composition" href="/guides/composition"> {"Render your own elements."} </ListItem>
          </ul>
        </Radix.NavigationMenu.Content>
      </Radix.NavigationMenu.Item>
      <Radix.NavigationMenu.Item>
        <Radix.NavigationMenu.Trigger className="nav-trigger">
          {React.string("Overlays")}
          <Icon.ChevronDown />
        </Radix.NavigationMenu.Trigger>
        <Radix.NavigationMenu.Content className="nav-content">
          <ul className="nav-grid">
            <ListItem title="Dialog" href="/components/dialog"> {"A window overlaid on the page."} </ListItem>
            <ListItem title="Popover" href="/components/popover"> {"Rich content anchored to a trigger."} </ListItem>
          </ul>
        </Radix.NavigationMenu.Content>
      </Radix.NavigationMenu.Item>
      <Radix.NavigationMenu.Item>
        <Radix.NavigationMenu.Link className="nav-trigger" href="https://www.radix-ui.com">
          {React.string("Radix")}
        </Radix.NavigationMenu.Link>
      </Radix.NavigationMenu.Item>
      <Radix.NavigationMenu.Indicator className="nav-indicator">
        <div className="nav-arrow" />
      </Radix.NavigationMenu.Indicator>
    </Radix.NavigationMenu.List>
    <div className="nav-viewport-position">
      <Radix.NavigationMenu.Viewport className="nav-viewport" />
    </div>
  </Radix.NavigationMenu.Root>
