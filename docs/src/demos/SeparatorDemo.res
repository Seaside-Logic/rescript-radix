@react.component
let make = () =>
  <div className="separator-demo">
    <div className="separator-title"> {React.string("Radix Primitives")} </div>
    <div className="muted"> {React.string("An open-source UI component library.")} </div>
    <Radix.Separator.Root className="separator" />
    <div className="row">
      <span> {React.string("Blog")} </span>
      <Radix.Separator.Root className="separator" decorative=true orientation=#vertical />
      <span> {React.string("Docs")} </span>
      <Radix.Separator.Root className="separator" decorative=true orientation=#vertical />
      <span> {React.string("Source")} </span>
    </div>
  </div>
