@react.component
let make = () =>
  <Radix.Tabs.Root className="tabs" defaultValue="account">
    <Radix.Tabs.List className="tabs-list" ariaLabel="Manage your account">
      <Radix.Tabs.Trigger className="tabs-trigger" value="account"> {React.string("Account")} </Radix.Tabs.Trigger>
      <Radix.Tabs.Trigger className="tabs-trigger" value="password"> {React.string("Password")} </Radix.Tabs.Trigger>
    </Radix.Tabs.List>
    <Radix.Tabs.Content className="tabs-content" value="account">
      <p className="muted"> {React.string("Make changes to your account here.")} </p>
      <label className="field">
        <span className="label"> {React.string("Name")} </span>
        <input className="input" defaultValue="Pedro Duarte" />
      </label>
      <button className="button primary"> {React.string("Save changes")} </button>
    </Radix.Tabs.Content>
    <Radix.Tabs.Content className="tabs-content" value="password">
      <p className="muted"> {React.string("Change your password here.")} </p>
      <label className="field">
        <span className="label"> {React.string("New password")} </span>
        <input className="input" type_="password" />
      </label>
      <button className="button primary"> {React.string("Change password")} </button>
    </Radix.Tabs.Content>
  </Radix.Tabs.Root>
