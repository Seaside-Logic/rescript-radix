@react.component
let make = () =>
  <Route.Link route=Home className="brand">
    <Icon.Logo />
    {React.string("rescript-radix")}
  </Route.Link>
