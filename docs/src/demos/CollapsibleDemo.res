@react.component
let make = () => {
  let (open_, setOpen) = React.useState(() => false)

  <Radix.Collapsible.Root className="collapsible" open_ onOpenChange={value => setOpen(_ => value)}>
    <div className="collapsible-header">
      <span> {React.string("3 starred repositories")} </span>
      <Radix.Collapsible.Trigger className="button small">
        {React.string(open_ ? "Show less" : "Show all")}
      </Radix.Collapsible.Trigger>
    </div>
    <div className="repo"> {React.string("radix-ui/primitives")} </div>
    <Radix.Collapsible.Content className="collapsible-content">
      <div className="repo"> {React.string("rescript-lang/rescript")} </div>
      <div className="repo"> {React.string("rescript-lang/rescript-react")} </div>
    </Radix.Collapsible.Content>
  </Radix.Collapsible.Root>
}
