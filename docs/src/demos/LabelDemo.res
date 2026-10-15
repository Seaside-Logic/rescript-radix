@react.component
let make = () =>
  <div className="row">
    <Radix.Label.Root className="label" htmlFor="first-name"> {React.string("First name")} </Radix.Label.Root>
    <input className="input" id="first-name" defaultValue="Pedro Duarte" />
  </div>
